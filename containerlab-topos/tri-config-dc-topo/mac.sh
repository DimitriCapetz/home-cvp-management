sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:30/' clab-tri-config-dc-topo/DC1-SPINE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:40/' clab-tri-config-dc-topo/DC1-SPINE2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:50/' clab-tri-config-dc-topo/DC1-LEAF1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:60/' clab-tri-config-dc-topo/DC1-LEAF2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:70/' clab-tri-config-dc-topo/DC1-LEAF3/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:80/' clab-tri-config-dc-topo/DC1-LEAF4/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:90/' clab-tri-config-dc-topo/DC1-BORDER1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:a0/' clab-tri-config-dc-topo/DC1-BORDER2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:b0/' clab-tri-config-dc-topo/DC2-SPINE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:c0/' clab-tri-config-dc-topo/DC2-SPINE2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:d0/' clab-tri-config-dc-topo/DC2-LEAF1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:e0/' clab-tri-config-dc-topo/DC2-LEAF2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:f0/' clab-tri-config-dc-topo/DC2-LEAF3/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:00/' clab-tri-config-dc-topo/DC2-LEAF4/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:10/' clab-tri-config-dc-topo/DC2-BORDER1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:20/' clab-tri-config-dc-topo/DC2-BORDER2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:30/' clab-tri-config-dc-topo/DC3-SPINE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:40/' clab-tri-config-dc-topo/DC3-SPINE2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:50/' clab-tri-config-dc-topo/DC3-LEAF1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:60/' clab-tri-config-dc-topo/DC3-LEAF2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:70/' clab-tri-config-dc-topo/DC3-LEAF3/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:80/' clab-tri-config-dc-topo/DC3-LEAF4/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:90/' clab-tri-config-dc-topo/DC3-BORDER1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:a0/' clab-tri-config-dc-topo/DC3-BORDER2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:b0/' clab-tri-config-dc-topo/WAN1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:04:c0/' clab-tri-config-dc-topo/WAN2/flash/system_mac_address
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC1-BORDER2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC2-BORDER2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-tri-config-dc-topo/DC3-BORDER2/flash/cv-onboarding-token