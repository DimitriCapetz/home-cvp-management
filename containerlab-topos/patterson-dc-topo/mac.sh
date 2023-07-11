sudo touch clab-tri-config-dc-topo/DC1-SPINE1/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC1-SPINE2/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC1-LEAF1/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC1-LEAF2/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC1-CORE1/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC1-CORE2/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-SPINE1/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-SPINE2/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-LEAF1/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-LEAF2/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-LEAF3/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-LEAF4/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-CORE1/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-CORE2/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC1-WAN/flash/ceos-config
sudo touch clab-tri-config-dc-topo/DC2-WAN/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:00" >> clab-tri-config-dc-topo/DC1-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:10" >> clab-tri-config-dc-topo/DC1-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:20" >> clab-tri-config-dc-topo/DC1-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:30" >> clab-tri-config-dc-topo/DC1-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:40" >> clab-tri-config-dc-topo/DC1-CORE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:50" >> clab-tri-config-dc-topo/DC1-CORE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:60" >> clab-tri-config-dc-topo/DC2-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:70" >> clab-tri-config-dc-topo/DC2-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:80" >> clab-tri-config-dc-topo/DC2-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:90" >> clab-tri-config-dc-topo/DC2-LEAF2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:a0" >> clab-tri-config-dc-topo/DC2-LEAF3/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:b0" >> clab-tri-config-dc-topo/DC2-LEAF4/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:c0" >> clab-tri-config-dc-topo/DC2-CORE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:d0" >> clab-tri-config-dc-topo/DC2-CORE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:e0" >> clab-tri-config-dc-topo/DC1-WAN/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dd:00:f0" >> clab-tri-config-dc-topo/DC2-WAN/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-SPINE1" >> clab-tri-config-dc-topo/DC1-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-SPINE2" >> clab-tri-config-dc-topo/DC1-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-LEAF1" >> clab-tri-config-dc-topo/DC1-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-LEAF2" >> clab-tri-config-dc-topo/DC1-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-CORE1" >> clab-tri-config-dc-topo/DC1-CORE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-CORE2" >> clab-tri-config-dc-topo/DC1-CORE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-SPINE1" >> clab-tri-config-dc-topo/DC2-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-SPINE2" >> clab-tri-config-dc-topo/DC2-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF1" >> clab-tri-config-dc-topo/DC2-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF2" >> clab-tri-config-dc-topo/DC2-LEAF2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF3" >> clab-tri-config-dc-topo/DC2-LEAF3/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF4" >> clab-tri-config-dc-topo/DC2-LEAF4/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-CORE1" >> clab-tri-config-dc-topo/DC2-CORE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-CORE2" >> clab-tri-config-dc-topo/DC2-CORE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-WAN" >> clab-tri-config-dc-topo/DC1-WAN/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-WAN" >> clab-tri-config-dc-topo/DC2-WAN/flash/ceos-config
sudo rm clab-tri-config-dc-topo/DC1-SPINE1/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC1-SPINE2/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC1-LEAF1/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC1-LEAF2/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC1-CORE1/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC1-CORE2/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-SPINE1/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-SPINE2/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-LEAF1/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-LEAF2/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-LEAF3/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-LEAF4/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-CORE1/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-CORE2/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC1-WAN/flash/system_mac_address
sudo rm clab-tri-config-dc-topo/DC2-WAN/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:00/' clab-tri-config-dc-topo/DC1-SPINE1/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:10/' clab-tri-config-dc-topo/DC1-SPINE2/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:20/' clab-tri-config-dc-topo/DC1-LEAF1/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:30/' clab-tri-config-dc-topo/DC1-LEAF2/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:40/' clab-tri-config-dc-topo/DC1-CORE1/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:50/' clab-tri-config-dc-topo/DC1-CORE2/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:60/' clab-tri-config-dc-topo/DC2-SPINE1/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:70/' clab-tri-config-dc-topo/DC2-SPINE2/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:80/' clab-tri-config-dc-topo/DC2-LEAF1/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:90/' clab-tri-config-dc-topo/DC2-LEAF2/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:a0/' clab-tri-config-dc-topo/DC2-LEAF3/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:b0/' clab-tri-config-dc-topo/DC2-LEAF4/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:c0/' clab-tri-config-dc-topo/DC2-CORE1/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:d0/' clab-tri-config-dc-topo/DC2-CORE2/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:e0/' clab-tri-config-dc-topo/DC1-WAN/flash/system_mac_address
#sudo sed -i 's/..:..:..:..:..:../00:1c:73:dd:00:f0/' clab-tri-config-dc-topo/DC2-WAN/flash/system_mac_address
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-CORE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-CORE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-CORE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-CORE2/flash/cv-onboarding-token