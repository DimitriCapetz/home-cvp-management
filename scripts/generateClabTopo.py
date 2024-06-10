#!/usr/bin/env python3

import os
import shutil
import yaml

# Temp for debugging
from pprint import pprint

# Load files for future use
with open("/workspaces/home-cvp-management/scripts/clab_data/topo-info.yml", "r") as topo_file:
    topo_info = yaml.safe_load(topo_file)

with open("/workspaces/home-cvp-management/scripts/clab_data/base_config.cfg", "r") as config_file:
    base_config = config_file.read()

# Set Base Container Lab Topology Stuff

mgmt_ip_base = "10.99.99."
mac_base = "00:1c:73:dc:00:"

topo_type = topo_info["topo-type"]

clab_topo_base = {
    "mgmt": {
        "network": "clab_mgmt",
        "bridge": "br0",
        "ipv4-subnet": "10.99.99.0/24",
        "ipv4-gw": "10.99.99.1"
    },
    "topology": {
        "kinds": {
            "ceos": {
                "image": "ceos:4.31.2F"
            }
        },
        "nodes": {
            "graphite": {
                "kind": "linux",
                "image": "netreplica/graphite",
                "mgmt-ipv4": "10.99.99.3",
                "env": {
                    "GRAPHITE_DEFAULT_TYPE": "clab"
                },
                "binds": [".:/htdocs/clab"],
                "ports": ["80:80"],
                "exec": ["sh -c 'graphite_motd.sh 80'"],
                "labels": {
                    "graph-hide": "yes"
                }
            }
        },
        "links": [{"endpoints": ["EXAMPLE-NODE:eth1", "EXAMPLE-NODE:eth1"]}]
    }
}

topo_name = topo_info["name"]
clab_topo_base["name"] = topo_name

mac_script_base = '''sudo touch REPLACE-TOPO/REPLACE-HOSTNAME/flash/ceos-config
sudo echo "SYSTEMMACADDR=REPLACE-MAC" >> REPLACE-TOPO/REPLACE-HOSTNAME/flash/ceos-config
sudo echo "SERIALNUMBER=REPLACE-HOSTNAME" >> REPLACE-TOPO/REPLACE-HOSTNAME/flash/ceos-config
sudo rm REPLACE-TOPO/REPLACE-HOSTNAME/flash/system_mac_address
sudo cp ../cv-onboarding-token REPLACE-TOPO/REPLACE-HOSTNAME/flash/cv-onboarding-token'''

# Create base directory for new topo
topo_dir = "/workspaces/home-cvp-management/containerlab-topos/" + topo_info["name"]
configs_dir = "/workspaces/home-cvp-management/containerlab-topos/" + topo_info["name"] + "/configs"
os.mkdir(topo_dir)
os.mkdir(configs_dir)
# Copy Interface Mappings File
shutil.copy("/workspaces/home-cvp-management/scripts/clab_data/{}-leaf-mappings.json".format(topo_type), configs_dir)
shutil.copy("/workspaces/home-cvp-management/scripts/clab_data/{}-spine-mappings.json".format(topo_type), configs_dir)

# Create files based on info provided
clab_topo = clab_topo_base
mgmt_ip_octet = topo_info["mgmt-ip-start"]
mac_hextet = topo_info["mac-start"]
mac_script = ""
for node in topo_info["nodes"]:
    switch = [*node.keys()][0]
    type = node[switch]
    if type == "spine":
        level = 1
    elif type == "leaf":
        level = 2
    # Render IP and +1 to base to increment
    ip = mgmt_ip_base + str(mgmt_ip_octet)
    mgmt_ip_octet = mgmt_ip_octet + 1
    # Create Dict for topo entry
    node_topo = {
        switch: {
            "kind": "ceos",
            "mgmt-ipv4": ip,
            "startup-config": "./configs/{}.cfg".format(switch),
            "binds": ["./configs/{}-{}-mappings.json:/mnt/flash/EosIntfMapping.json:ro".format(topo_type, type)],
            "labels": {
                "graph-level": level,
                "graph-icon": "switch"
            }
        }
    }
    clab_topo["topology"]["nodes"].update(node_topo)
    node_config = base_config.replace("REPLACE-HOSTNAME", switch)
    with open(configs_dir + "/" + switch + ".cfg", "w") as config_file:
        config_file.write(node_config)
        config_file.close()
    # Generate Node MAC and increment
    node_mac = mac_base + f"{mac_hextet:02d}"
    mac_hextet = mac_hextet + 1
    # Create MAC Shell Script Entries
    mac_entry = mac_script_base.replace("REPLACE-HOSTNAME", switch)
    mac_entry = mac_entry.replace("REPLACE-TOPO", topo_name)
    mac_entry = mac_entry.replace("REPLACE-MAC", node_mac)
    mac_script += mac_entry


# Create Full Topo file
with open(topo_dir + "/" + topo_name + ".yml", "w") as topo_yaml:
    yaml.dump(clab_topo, topo_yaml)
# Create mac.sh script
with open(topo_dir + "/mac.sh", "w") as mac:
    mac.write(mac_script)
    mac.close()