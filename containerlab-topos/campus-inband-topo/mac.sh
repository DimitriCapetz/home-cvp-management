sudo touch clab-campus-inband-topo/CAMPUS-SPINE1/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-SPINE2/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C1-LEAF1/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C1-LEAF2/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C2-LEAF1/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C3-LEAF1/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C3-LEAF2/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C3-LEAF3/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C3-LEAF4/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C3-LEAF5/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-WAN1/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-WAN2/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C1-HOST1/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C2-HOST2/flash/ceos-config
sudo touch clab-campus-inband-topo/CAMPUS-C3-AP1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:00" >> clab-campus-inband-topo/CAMPUS-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:10" >> clab-campus-inband-topo/CAMPUS-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:20" >> clab-campus-inband-topo/CAMPUS-C1-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:30" >> clab-campus-inband-topo/CAMPUS-C1-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:40" >> clab-campus-inband-topo/CAMPUS-C2-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:50" >> clab-campus-inband-topo/CAMPUS-C3-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:60" >> clab-campus-inband-topo/CAMPUS-C3-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:70" >> clab-campus-inband-topo/CAMPUS-C3-LEAF3/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:80" >> clab-campus-inband-topo/CAMPUS-C3-LEAF4/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:90" >> clab-campus-inband-topo/CAMPUS-C3-LEAF5/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:a0" >> clab-campus-inband-topo/CAMPUS-WAN1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:b0" >> clab-campus-inband-topo/CAMPUS-WAN2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:c0" >> clab-campus-inband-topo/CAMPUS-C1-HOST1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:d0" >> clab-campus-inband-topo/CAMPUS-C2-HOST2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:e0" >> clab-campus-inband-topo/CAMPUS-C3-AP1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-SPINE1" >> clab-campus-inband-topo/CAMPUS-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-SPINE2" >> clab-campus-inband-topo/CAMPUS-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C1-LEAF1" >> clab-campus-inband-topo/CAMPUS-C1-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C1-LEAF2" >> clab-campus-inband-topo/CAMPUS-C1-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C2-LEAF1" >> clab-campus-inband-topo/CAMPUS-C2-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF1" >> clab-campus-inband-topo/CAMPUS-C3-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF2" >> clab-campus-inband-topo/CAMPUS-C3-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF3" >> clab-campus-inband-topo/CAMPUS-C3-LEAF3/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF4" >> clab-campus-inband-topo/CAMPUS-C3-LEAF4/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-LEAF5" >> clab-campus-inband-topo/CAMPUS-C3-LEAF5/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-WAN1" >> clab-campus-inband-topo/CAMPUS-WAN1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-WAN2" >> clab-campus-inband-topo/CAMPUS-WAN2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C1-HOST1" >> clab-campus-inband-topo/CAMPUS-C1-HOST1/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C2-HOST2" >> clab-campus-inband-topo/CAMPUS-C2-HOST2/flash/ceos-config
sudo echo "SERIALNUMBER=CAMPUS-C3-AP1" >> clab-campus-inband-topo/CAMPUS-C3-AP1/flash/ceos-config
sudo rm clab-campus-inband-topo/CAMPUS-SPINE1/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-SPINE2/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C1-LEAF1/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C1-LEAF2/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C2-LEAF1/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C3-LEAF1/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C3-LEAF2/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C3-LEAF3/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C3-LEAF4/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C3-LEAF5/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-WAN1/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-WAN2/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C1-HOST1/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C2-HOST2/flash/system_mac_address
sudo rm clab-campus-inband-topo/CAMPUS-C3-AP1/flash/system_mac_address
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C1-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C1-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C2-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C3-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C3-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C3-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C3-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C3-LEAF5/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-WAN1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-WAN2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C1-HOST1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C2-HOST2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-campus-inband-topo/CAMPUS-C3-AP1/flash/cv-onboarding-token