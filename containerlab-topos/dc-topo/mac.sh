sudo sed -i 's/..:..:..:..:..:../00:1c:73:10:00:00/' clab-dc-topo/DC-SPINE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:11:00:00/' clab-dc-topo/DC-SPINE2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:12:00:00/' clab-dc-topo/DC-LEAF1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:13:00:00/' clab-dc-topo/DC-LEAF2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:14:00:00/' clab-dc-topo/DC-LEAF3/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:15:00:00/' clab-dc-topo/DC-LEAF4/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:16:00:00/' clab-dc-topo/DC-LEAF5/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:17:00:00/' clab-dc-topo/DC-LEAF6/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:18:00:00/' clab-dc-topo/DC-BORDER1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:19:00:00/' clab-dc-topo/DC-BORDER2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:20:00:00/' clab-dc-topo/WAN1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:21:00:00/' clab-dc-topo/WAN2/flash/system_mac_address
sudo cp ../cv-onboarding-token clab-dc-topo/DC-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-LEAF5/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-LEAF6/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-dc-topo/DC-BORDER2/flash/cv-onboarding-token