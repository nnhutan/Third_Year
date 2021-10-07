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

    def broadcast(self, msg, prefix=""):

class ServerWorker():
    def __init__(self, server, client):
        self.SERVER = server
        self.client = client
    
    def handle_client(self):
        name = self.client.recv(BUFSIZ).decode("utf8")
        self.SERVER.client_dict[self.client] = name

        print("{} has joint the conversation".format(name))
        welcome = 'Welcome {}! If you ever want to quit, type #out# to exit;'.format(name)
        self.client.send(bytes(welcome, "utf8"))
        msg = "%s has joined the chat!" % name
        self.SERVER.broadcast(bytes(msg, "utf8"))

        while True:
		"""If out then close the connection, else broadcast the message to all the client"""

if __name__ == "__main__":
    server = Server()
    server.listen()
