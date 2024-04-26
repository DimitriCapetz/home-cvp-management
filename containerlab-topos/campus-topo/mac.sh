sudo touch campus-topo/CAMPUS-SPINE1/flash/ceos-config
sudo touch campus-topo/CAMPUS-SPINE2/flash/ceos-config
sudo touch campus-topo/CAMPUS-C1-LEAF1/flash/ceos-config
sudo touch campus-topo/CAMPUS-C1-LEAF2/flash/ceos-config
sudo touch campus-topo/CAMPUS-C2-LEAF1/flash/ceos-config
sudo touch campus-topo/CAMPUS-C3-LEAF1/flash/ceos-config
sudo touch campus-topo/CAMPUS-C3-LEAF2/flash/ceos-config
sudo touch campus-topo/CAMPUS-C3-LEAF3/flash/ceos-config
sudo touch campus-topo/CAMPUS-C3-LEAF4/flash/ceos-config
sudo touch campus-topo/CAMPUS-C3-LEAF5/flash/ceos-config
sudo touch campus-topo/CAMPUS-WAN1/flash/ceos-config
sudo touch campus-topo/CAMPUS-WAN2/flash/ceos-config
sudo touch campus-topo/CAMPUS-C1-HOST1/flash/ceos-config
sudo touch campus-topo/CAMPUS-C2-HOST2/flash/ceos-config
sudo touch campus-topo/CAMPUS-C3-AP1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:00" >> campus-topo/CAMPUS-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:10" >> campus-topo/CAMPUS-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:20" >> campus-topo/CAMPUS-C1-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:30" >> campus-topo/CAMPUS-C1-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:40" >> campus-topo/CAMPUS-C2-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:50" >> campus-topo/CAMPUS-C3-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:60" >> campus-topo/CAMPUS-C3-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:70" >> campus-topo/CAMPUS-C3-LEAF3/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:80" >> campus-topo/CAMPUS-C3-LEAF4/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:90" >> campus-topo/CAMPUS-C3-LEAF5/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:a0" >> campus-topo/CAMPUS-WAN1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:b0" >> campus-topo/CAMPUS-WAN2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:c0" >> campus-topo/CAMPUS-C1-HOST1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:d0" >> campus-topo/CAMPUS-C2-HOST2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:e0" >> campus-topo/CAMPUS-C3-AP1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-SPINE1" >> campus-topo/CAMPUS-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-SPINE2" >> campus-topo/CAMPUS-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C1-LEAF1" >> campus-topo/CAMPUS-C1-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C1-LEAF2" >> campus-topo/CAMPUS-C1-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C2-LEAF1" >> campus-topo/CAMPUS-C2-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF1" >> campus-topo/CAMPUS-C3-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF2" >> campus-topo/CAMPUS-C3-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF3" >> campus-topo/CAMPUS-C3-LEAF3/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF4" >> campus-topo/CAMPUS-C3-LEAF4/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF5" >> campus-topo/CAMPUS-C3-LEAF5/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-WAN1" >> campus-topo/CAMPUS-WAN1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-WAN2" >> campus-topo/CAMPUS-WAN2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C1-HOST1" >> campus-topo/CAMPUS-C1-HOST1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C2-HOST2" >> campus-topo/CAMPUS-C2-HOST2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-AP1" >> campus-topo/CAMPUS-C3-AP1/flash/ceos-config
sudo rm campus-topo/CAMPUS-SPINE1/flash/system_mac_address
sudo rm campus-topo/CAMPUS-SPINE2/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C1-LEAF1/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C1-LEAF2/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C2-LEAF1/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C3-LEAF1/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C3-LEAF2/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C3-LEAF3/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C3-LEAF4/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C3-LEAF5/flash/system_mac_address
sudo rm campus-topo/CAMPUS-WAN1/flash/system_mac_address
sudo rm campus-topo/CAMPUS-WAN2/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C1-HOST1/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C2-HOST2/flash/system_mac_address
sudo rm campus-topo/CAMPUS-C3-AP1/flash/system_mac_address
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C1-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C1-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C2-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C3-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C3-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C3-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C3-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C3-LEAF5/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-WAN1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-WAN2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C1-HOST1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C2-HOST2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token campus-topo/CAMPUS-C3-AP1/flash/cv-onboarding-token