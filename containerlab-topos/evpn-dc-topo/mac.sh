sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:80/' clab-evpn-dc-topo/DC-SPINE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:90/' clab-evpn-dc-topo/DC-SPINE2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:a0/' clab-evpn-dc-topo/DC-LEAF1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:b0/' clab-evpn-dc-topo/DC-LEAF2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:c0/' clab-evpn-dc-topo/DC-LEAF3/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:d0/' clab-evpn-dc-topo/DC-LEAF4/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:e0/' clab-evpn-dc-topo/DC-LEAF5/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:f0/' clab-evpn-dc-topo/DC-LEAF6/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:30/' clab-evpn-dc-topo/DC-BORDER1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:00/' clab-evpn-dc-topo/DC-BORDER2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:10/' clab-evpn-dc-topo/WAN1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:03:20/' clab-evpn-dc-topo/WAN2/flash/system_mac_address
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-LEAF4/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-LEAF5/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-LEAF6/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-evpn-dc-topo/DC-BORDER2/flash/cv-onboarding-token