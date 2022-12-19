# Allow self-signed certs
from cgitb import text
import ssl
ssl._create_default_https_context = ssl._create_unverified_context


import yaml
from jsonrpclib import Server

with open(r'dcapetz-premier.yml') as file:
    devices = yaml.load(file, Loader=yaml.FullLoader)

ips = []

for device in devices['all']['children']['VEOS']['hosts'].items():
   ips.append(device[1]['ansible_host'])

print(ips)

for ip in ips:
    switch = Server("https://arista:arista@" + ip + "/command-api")
    response = switch.runCmds(version=1, cmds=["enable", "show running-config"], format="text")
    running_config = response[1]['output']
    hostname = switch.runCmds(1,["show hostname"])
    with open(hostname[0]['hostname'] + '.txt', 'w') as f:
        f.write(running_config)