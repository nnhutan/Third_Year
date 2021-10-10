from socket import AF_INET, socket, SOCK_STREAM
from threading import Thread

BUFSIZ = 1024


class Server():
    def __init__(self, host="", port=8888):
        """
        host <str> hostname
        port <int> port to start the server
        """
        ADDR = (host, port)
        self.SERVER = socket(AF_INET, SOCK_STREAM)
        self.SERVER.bind(ADDR)
        self.addr_dict = {}
        self.client_dict = {}

        self.listen()

    def listen(self):
        """
        Wait for the connection
        Create a new thread to handle the new connections
        """
        self.SERVER.listen(5)
        print("Waiting for connection...")
        # Create new thread
        ACCEPT_THREAD = Thread(target=self.accept_connection)
        ACCEPT_THREAD.start()
        ACCEPT_THREAD.join()

        # End of server business
        self.SERVER.close()

    def accept_connection(self):
        """Sets up handling for incoming clients."""
        while True:
            client, addr = self.SERVER.accept()
            print("%s:%s has connected." % addr)
            client.send(
                bytes("what's up! Now type your name and press enter!", "utf8")
            )
            self.addr_dict[client] = addr

            worker = ServerWorker(self, client)
            Thread(target=worker.handle_client).start()

    def broadcast(self, msg, prefix=""):
        for sock in self.client_dict:
            sock.send(bytes(prefix, "utf8")+msg)


class ServerWorker():
    def __init__(self, server, client):
        self.SERVER = server
        self.client = client

    def handle_client(self):
        name = self.client.recv(BUFSIZ).decode("utf8")
        self.SERVER.client_dict[self.client] = name

        print("{} has joint the conversation".format(name))
        welcome = 'Welcome {}! If you ever want to quit, type #out# to exit;'.format(
            name)
        self.client.send(bytes(welcome, "utf8"))
        msg = "%s has joined the chat!" % name
        self.SERVER.broadcast(bytes(msg, "utf8"))

        while True:
            # """If out then close the connection, else broadcast the message to all the client"""
            msg = self.client.recv(BUFSIZ)
            if(msg != bytes("#out#", "utf8")):
                self.SERVER.broadcast(msg, name + ": ")
            else:
                self.client.send(bytes("#out#", "utf8"))
                self.client.close()
                del self.SERVER.client_dict[self.client]
                self.SERVER.broadcast(
                    bytes("%s has left the chat." % name, "utf8"))
                break


if __name__ == "__main__":
    server = Server()
    server.listen()
