# Allow self-signed certs
import ssl
ssl._create_default_https_context = ssl._create_unverified_context

from jsonrpclib import Server
import pprint

ips = ['10.255.63.195',
 '10.255.55.159',
 '10.255.116.213',
 '10.255.35.51',
 '10.255.46.84',
 '10.255.85.233',
 '10.255.27.171',
 '10.255.30.227',
 '10.255.80.221',
 '10.255.100.32',
 '10.255.32.232',
 '10.255.12.96',
 '10.255.90.1',
 '10.255.79.26',
 '10.255.48.106',
 '10.255.41.218',
 '10.255.82.57',
 '10.255.50.61',
 '10.255.35.129',
 '10.255.18.32',
 '10.255.0.161',
 '10.255.106.37',
 '10.255.107.68',
 '10.255.51.224',
 '10.255.76.31']

# When reading device IPs from YAML file (from ACT) - Set ips to empty list
#import yaml
#
#with open(r'dcapetz-premier.yml') as file:
#    devices = yaml.load(file, Loader=yaml.FullLoader)
#
#for device in devices['all']['children']['VEOS']['hosts'].items():
#   ips.append(device[1]['ansible_host'])

for ip in ips:
    switch = Server("https://arista:arista@" + ip + "/command-api")
    # Getting Text version of Config and Show Command Outputs
    #configResponse = switch.runCmds(version=1, cmds=["enable",
    #                                                 "show running-config", 
    #                                                 "show isis segment-routing prefix-segments", 
    #                                                 "show isis ti-lfa path detail"], format="text")
    #runningConfig = configResponse[1]['output']
    #prefixSids = configResponse[2]['output']
    #tilfaPath = configResponse[3]['output']
    ## Getting TI-LFA Path and PQ distance
    #isisResponse = switch.runCmds(1, ["enable",
    #                                  "show isis ti-lfa path",
    #                                  "show isis segment-routing prefix-segments"])
    #output = ""
    #maxNodeCount = 0
    #try:
    #    for node in isisResponse[1]["vrfs"]["default"]["v4Info"]["topologies"]["2"]["destinations"].items():
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
    #    output = output + "\n\n!!!!!!!!!\nISIS Data\n!!!!!!!!!\n\n" + pprint.pformat(isisResponse[1]) + "\n\n" + pprint.pformat(isisResponse[2])
    #except KeyError:
    #    output = "ISIS Disabled"
    #output = output + "\n\n!!!!!!\nCONFIG\n!!!!!!\n\n" + runningConfig + prefixSids + tilfaPath
    #hostname = switch.runCmds(1,["show hostname"])
    #if "ISIS Disabled" in output:
    #    with open(hostname[0]['hostname'] + '-DISABLED.txt', 'w') as f:
    #        f.write(output)
    #else:
    #    with open(hostname[0]['hostname'] + '-' + str(maxNodeCount) + '.txt', 'w') as f:
    #        f.write(output)
    # Add Lines of Config to all devices
    response = switch.runCmds(1, ["enable", "configure", "router isis 100", "address-family ipv4 unicast", "maximum-paths 1"])