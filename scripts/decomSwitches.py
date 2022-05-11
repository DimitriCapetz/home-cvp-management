from cvprac.cvp_client import CvpClient

topo = input("Which Topo to decom? ")

if topo == "DC":
    containerList = ["Compute Pod 1", "Compute Pod 2", "Compute Pod 3", "Compute Leaves", "Border Leaves", "Leaves", "Spines"]
elif topo == "Campus":
    containerList = ["Compute Pod 1", "Compute Pod 2", "Compute Pod 3", "Compute Leaves", "Border Leaves", "Leaves", "Spines"]

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