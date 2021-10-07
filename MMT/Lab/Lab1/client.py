"""Script for Tkinter GUI chat client."""
from socket import AF_INET, socket, SOCK_STREAM
from threading import Thread

def receive():
    """Handles receiving of messages."""
    while True:
        try:
            msg = client_socket.recv(BUFSIZ).decode("utf8")
            print(msg)
        except OSError:  # Possibly client has left the chat.
            break


def send(event=None):  # event is passed by binders.
    """Handles sending of messages."""
    while True:
        msg = input()
        client_socket.send(bytes(msg, "utf8"))
        if msg == "#out#":
            print("Stop chat")
            client_socket.close()
            break


def on_closing(event=None):
    """This function is to be called when the window is closed."""
    send()

#----Now comes the sockets part----
PORT = int(input('port: '))
HOST = input('host: ')

BUFSIZ = 1024
ADDR = (HOST, PORT)

client_socket = socket(AF_INET, SOCK_STREAM)
client_socket.connect(ADDR)

receive_thread = Thread(target=receive)
receive_thread.start()
send_thread = Thread(target=send)
send_thread.start()
