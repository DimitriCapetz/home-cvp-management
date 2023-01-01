# Allow self-signed certs
import ssl
ssl._create_default_https_context = ssl._create_unverified_context

from pprint import pprint
import yaml
from jsonrpclib import Server

with open(r'dcapetz-premier.yml') as file:
    devices = yaml.load(file, Loader=yaml.FullLoader)

ips = []

for device in devices['all']['children']['VEOS']['hosts'].items():
   ips.append(device[1]['ansible_host'])

for ip in ips:
    switch = Server("https://arista:arista@" + ip + "/command-api")
    # Getting Text version of Config
    #response = switch.runCmds(version=1, cmds=["enable", "show running-config"], format="text")
    #output = response[1]['output']
    # Getting TI-LFA Path and PQ distance
    #response = switch.runCmds(1, ["enable", "show isis ti-lfa path"])
    #output = ""
    #maxNodeCount = 0
    #try:
    #    for node in response[1]["vrfs"]["default"]["v4Info"]["topologies"]["2"]["destinations"].items():
    #        destinationNode = node[1]["hostname"]
    #        for path in node[1]["pathIds"].items():
    #            if "excludeIntf" in path[1]["constraint"].keys():
    #                protection = "Link Protection"
    #            else:
    #                protection = "Node Protection"
    #            nodeCount = len(path[1]["sysIds"])
    #            if nodeCount > maxNodeCount:
    #                maxNodeCount = nodeCount
    #            if nodeCount > 4:
    #                output = output + "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n!POTENTIAL TI-LFA PATH ISSUE:!\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    #            nodeStr = str(len(path[1]["sysIds"])) + " Node(s)"
    #            output = output + destinationNode + " - " + protection + " = " + nodeStr + "\n\n"
    #    #print(output)
    #except KeyError:
    #    output = "ISIS Disabled"
    #hostname = switch.runCmds(1,["show hostname"])
    #if output == "ISIS Disabled":
    #    with open(hostname[0]['hostname'] + '-DISABLED.txt', 'w') as f:
    #        f.write(output)
    #else:
    #    with open(hostname[0]['hostname'] + '-' + str(maxNodeCount) + '.txt', 'w') as f:
    #        f.write(output)
    # Adding Lines of Config to all devices
    response = switch.runCmds(1, ["enable", "configure", "router isis 100", "address-family ipv4 unicast", "fast-reroute ti-lfa srlg strict"])