from jsonrpclib import Server
from time import sleep

switch = Server( "unix:/var/run/command-api.sock")

for second_octet in range(0,1):
    for third_octet in range(0,1):
        route = "ip route 2." + str(second_octet) + "." + str(third_octet) + ".0/24 192.168.0.1"
        #print(route)
        switch.runCmds( 1, ["configure", route])
        sleep(1)