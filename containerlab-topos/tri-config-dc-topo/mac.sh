sudo touch tri-config-dc-topo/DC1-SPINE1/flash/ceos-config22
sudo touch tri-config-dc-topo/DC1-SPINE2/flash/ceos-config
sudo touch tri-config-dc-topo/DC1-LEAF1/flash/ceos-config
sudo touch tri-config-dc-topo/DC1-LEAF2/flash/ceos-config
sudo touch tri-config-dc-topo/DC1-LEAF3/flash/ceos-config
sudo touch tri-config-dc-topo/DC1-LEAF4/flash/ceos-config
sudo touch tri-config-dc-topo/DC1-BORDER1/flash/ceos-config
sudo touch tri-config-dc-topo/DC1-BORDER2/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-SPINE1/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-SPINE2/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-LEAF1/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-LEAF2/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-LEAF3/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-LEAF4/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-BORDER1/flash/ceos-config
sudo touch tri-config-dc-topo/DC2-BORDER2/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-SPINE1/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-SPINE2/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-LEAF1/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-LEAF2/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-LEAF3/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-LEAF4/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-BORDER1/flash/ceos-config
sudo touch tri-config-dc-topo/DC3-BORDER2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:00" >> tri-config-dc-topo/DC1-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:01" >> tri-config-dc-topo/DC1-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:02" >> tri-config-dc-topo/DC1-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:03" >> tri-config-dc-topo/DC1-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:04" >> tri-config-dc-topo/DC1-LEAF3/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:05" >> tri-config-dc-topo/DC1-LEAF4/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:06" >> tri-config-dc-topo/DC1-BORDER1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:11:07" >> tri-config-dc-topo/DC1-BORDER2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:00" >> tri-config-dc-topo/DC2-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:01" >> tri-config-dc-topo/DC2-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:02" >> tri-config-dc-topo/DC2-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:03" >> tri-config-dc-topo/DC2-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:04" >> tri-config-dc-topo/DC2-LEAF3/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:05" >> tri-config-dc-topo/DC2-LEAF4/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:06" >> tri-config-dc-topo/DC2-BORDER1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:22:07" >> tri-config-dc-topo/DC2-BORDER2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:00" >> tri-config-dc-topo/DC3-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:01" >> tri-config-dc-topo/DC3-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:02" >> tri-config-dc-topo/DC3-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:03" >> tri-config-dc-topo/DC3-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:04" >> tri-config-dc-topo/DC3-LEAF3/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:05" >> tri-config-dc-topo/DC3-LEAF4/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:06" >> tri-config-dc-topo/DC3-BORDER1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:33:07" >> tri-config-dc-topo/DC3-BORDER2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-SPINE1" >> tri-config-dc-topo/DC1-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-SPINE2" >> tri-config-dc-topo/DC1-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-LEAF1" >> tri-config-dc-topo/DC1-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-LEAF2" >> tri-config-dc-topo/DC1-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-LEAF3" >> tri-config-dc-topo/DC1-LEAF3/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-LEAF4" >> tri-config-dc-topo/DC1-LEAF4/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-BORDER1" >> tri-config-dc-topo/DC1-BORDER1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-BORDER2" >> tri-config-dc-topo/DC1-BORDER2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-SPINE1" >> tri-config-dc-topo/DC2-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-SPINE2" >> tri-config-dc-topo/DC2-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF1" >> tri-config-dc-topo/DC2-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF2" >> tri-config-dc-topo/DC2-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF3" >> tri-config-dc-topo/DC2-LEAF3/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF4" >> tri-config-dc-topo/DC2-LEAF4/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-BORDER1" >> tri-config-dc-topo/DC2-BORDER1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-BORDER2" >> tri-config-dc-topo/DC2-BORDER2/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-SPINE1" >> tri-config-dc-topo/DC3-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-SPINE2" >> tri-config-dc-topo/DC3-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-LEAF1" >> tri-config-dc-topo/DC3-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-LEAF2" >> tri-config-dc-topo/DC3-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-LEAF3" >> tri-config-dc-topo/DC3-LEAF3/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-LEAF4" >> tri-config-dc-topo/DC3-LEAF4/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-BORDER1" >> tri-config-dc-topo/DC3-BORDER1/flash/ceos-config
sudo echo "SERIALNUMBER=DC3-BORDER2" >> tri-config-dc-topo/DC3-BORDER2/flash/ceos-config
sudo rm tri-config-dc-topo/DC1-SPINE1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC1-SPINE2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC1-LEAF1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC1-LEAF2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC1-LEAF3/flash/system_mac_address
sudo rm tri-config-dc-topo/DC1-LEAF4/flash/system_mac_address
sudo rm tri-config-dc-topo/DC1-BORDER1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-BORDER2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-SPINE1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-SPINE2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-LEAF1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-LEAF2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-LEAF3/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-LEAF4/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-BORDER1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC2-BORDER2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-SPINE1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-SPINE2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-LEAF1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-LEAF2/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-LEAF3/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-LEAF4/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-BORDER1/flash/system_mac_address
sudo rm tri-config-dc-topo/DC3-BORDER2/flash/system_mac_address
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC1-BORDER2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC2-BORDER2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token tri-config-dc-topo/DC3-BORDER2/flash/cv-onboarding-token

#ceos-config file in flash for SYSTEMMACADDR=<MAC from above> and SERIALNUMBER=<SN of choice>