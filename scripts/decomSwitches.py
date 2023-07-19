from cvprac.cvp_client import CvpClient

topo = input("Which Topo to decom? ")

if topo == "DC":
    containerList = [
        "DC Compute Pod 1", "DC Compute Pod 2", "DC Compute Pod 3", "DC Compute Leaves", 
        "DC Border Leaves", "DC Leaves", "DC Spines", "DC Data Center"
        ]
elif topo == "CAMPUS":
    containerList = [
        "Campus Pod 1 Splines", "Campus Pod 1 Leaves", "Campus Pod 2 Splines", 
        "Campus Pod 2 Leaves", "Campus Pod 3 Splines", "Campus Pod 3 Leaves", 
        "Campus Pod 1", "Campus Pod 2", "Campus Pod 3", "Closets", "Spines", "Campus"
        ]
elif topo == "EVPN":
    containerList = [
        "DC Compute Pod 1", "DC Compute Pod 2", "DC Compute Pod 3", "DC Compute Leaves", 
        "DC Border Leaves", "DC Leaves", "DC Spines", "DC Data Center"
        ]
elif topo == "TRI":
    containerList = [
        "DC2_FABRIC","DC3_LEAF_DOMAIN_1", "DC3_LEAF_DOMAIN_2",
        "DC3_BORDER_LEAFS", "DC3_LEAVES", "DC3_SPINES", "DC3_FABRIC",
        "DC1_LEAF_DOMAIN_1", "DC1_LEAF_DOMAIN_2",
        "DC1_BORDER_LEAVES", "DC1_LEAVES", "DC1_SPINES", "DC1_FABRIC"
        ]
elif topo == "AVD":
    containerList = [
        "DC_COMPUTE_POD1", "DC_COMPUTE_POD2", "DC_COMPUTE_LEAVES", 
        "DC_BORDER_LEAVES", "DC_LEAVES", "DC_SPINES", "DC_FABRIC"
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
elif topo == "DCI":
    containerList = [
        "DCI DC3 Border", "DCI DC3 Legacy", "DCI DC2 Legacy", "DCI DC2 Fabric", "DCI DC2 Border A",
        "DCI DC2 Border B", "DCI DC2 Border", "DCI DC1 Legacy", "DCI DC1 Fabric", "DCI DC1 Border",
        "DCI DC3", "DCI DC2", "DCI DC1", "DCI Simulation"
        ]
elif topo == "Patterson":
    containerList = [
        "dcapetz Virtual Lab"
        ]
elif topo == "DUAL":
    containerList = [
        "EnterpriseDC2EdgeLeaves", "EnterpriseDC2LeafDomain3", "EnterpriseDC2LeafDomain2", 
        "EnterpriseDC2LeafDomain1", "EnterpriseDC1EdgeLeaves", "EnterpriseDC1LeafDomain3", 
        "EnterpriseDC1LeafDomain2", "EnterpriseDC1LeafDomain1","EnterpriseDC1Leaves", 
        "EnterpriseDC2Leaves", "EnterpriseDC1Spines", "EnterpriseDC2Spines", "EnterpriseDC2Core", 
        "EnterpriseDC1Core", "EnterpriseDC1", "EnterpriseDC2", "EnterpriseDC"
        ]

# Disable Cert Warnings for Test Environment
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# Connect to CVP and get Device Inventory
clnt = CvpClient()
clnt.connect(nodes=['www.cv-prod-na-northeast1-b.arista.io'], username='', password='', is_cvaas=True, api_token='eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJkaWQiOjcxMDcwOTA2MjE4ODU1ODc3MzMsImRzbiI6ImRjYXBldHogQW5zaWJsZSBBY2NvdW50IiwiZHN0IjoiYWNjb3VudCIsImV4cCI6MTcwNDA0Nzk3OCwiaWF0IjoxNjgxOTI1OTgyLCJvZ2kiOjcxMDcwOTA2MjE4ODU1ODcyMjksIm9nbiI6Im5vcnRoLWNlbnRyYWwtY2UiLCJzaWQiOiJkYjRjNDZiZDBhZTNkNzZiMWI4ZWU4MWY3MGZjNjE4N2ExNjk2YzQxNGFhNTY0ZmI2MDRjYzNjNmVlZDE4MjlmLXEzMHVKOUNQTDE1TklLSlFoZG5pZ3RuSVRQQ3B6TUo4el9NQ2I2TTAifQ.3KxECy4V5BdXoKasn7euVfIv39nf3m78xfURK8ky2VpNxfPw0W6DWiSt4uIm9GUsqjslOSFSxi095WObSfxleg')
devices = clnt.api.get_inventory()
devicesToDecom = []

# Parse out all provisioned devices and remove from Provisioning Inventory
if devices:
    for device in devices:
        if device["containerName"] in containerList:
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