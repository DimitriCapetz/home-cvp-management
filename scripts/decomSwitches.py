from cvprac.cvp_client import CvpClient

topo = input("Which Topo to decom? ")

if topo == "DC":
    containerList = [
        "Compute Pod 1", "Compute Pod 2", "Compute Pod 3", "Compute Leaves", 
        "Border Leaves", "Leaves", "Spines", "Data Center"
        ]
elif topo == "CAMPUS":
    containerList = [
        "Campus Pod 1 Splines", "Campus Pod 1 Leaves", "Campus Pod 2 Splines", 
        "Campus Pod 2 Leaves", "Campus Pod 3 Splines", "Campus Pod 3 Leaves", 
        "Campus Pod 1", "Campus Pod 2", "Campus Pod 3", "Closets", "Spines", "Campus"
        ]
elif topo == "ENT":
    containerList = [
        "DC1 Compute Pod 1", "DC1 Compute Pod 2", "DC1 Compute Pod 3", "DC1 Compute Leaves", 
        "DC2 Compute Pod 1", "DC2 Compute Pod 2", "DC2 Compute Pod 3", "DC2 Compute Leaves", 
        "DC1 Border Leaves", "DC1 Leaves", "DC1 Spines", "DC1 Core", 
        "DC2 Border Leaves", "DC2 Leaves", "DC2 Spines", "DC2 Core", 
        "Data Center 1", "Data Center 2", "Enterprise Data Centers"
        ]
elif topo == "RC":
    containerList = [
        "Spines", "Floor 3 Closet 2 Leaves", "Floor 3 Closet 1 Leaves", "Floor 2 Closet 2 Leaves", 
        "Floor 2 Closet 1 Leaves", "Floor 1 Closet 2 Leaves", "Floor 1 Closet 1 Leaves",
        "Floor 3 Closet 2 Splines", "Floor 3 Closet 1 Splines", "Floor 2 Closet 2 Splines",
        "Floor 2 Closet 1 Splines", "Floor 1 Closet 2 Splines", "Floor 1 Closet 1 Splines",
        "Floor 3 Closet 2", "Floor 3 Closet 1", "Floor 2 Closet 2", 
        "Floor 2 Closet 1", "Floor 1 Closet 2", "Floor 1 Closet 1", "Closets", "Rocket Central Campus"
        ]
elif topo == "PRIME":
    containerList = [
        "DC1 Core Routers", "DC2 Core Routers", "DC3 Core Routers", 
        "DC1 Access Switches", "DC2 Access Switches", "DC3 Access Switches", 
        "DC3", "DC2", "DC1", "Prime Therapeutics Core"
        ]

# Disable Cert Warnings for Test Environment
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# Connect to CVP and get Device Inventory
clnt = CvpClient()
clnt.connect(['home-cvp.dime-a-tron.com'], 'cvpadmin', '0227DcDc!')
devices = clnt.api.get_inventory()
devicesToDecom = []

# Parse out all provisioned devices and remove from Provisioning Inventory
if devices:
    for device in devices:
        if device["containerName"] != "Undefined":
            devicesToDecom.append(device["systemMacAddress"])

decom = clnt.api.delete_devices(devicesToDecom)
print("Switch Decom Status:")
print(decom)

# Remove All Topology Containers
containerData = clnt.api.get_containers()["data"]

for container in containerList:
    for item in containerData:
        if container == item["name"]:
            name = item["name"]
            key = item["key"]
            parentName = item["parentName"]
            parentId = item["parentId"]
            decom = clnt.api.delete_container(name, key, parentName, parentId)
            print(container + " Decom Status:")
            print(decom)