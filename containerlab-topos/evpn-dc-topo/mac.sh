echo 00:1c:73:dc:02:80 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-SPINE1/flash/system_mac_address
echo 00:1c:73:dc:02:90 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-SPINE2/flash/system_mac_address
echo 00:1c:73:dc:02:a0 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-LEAF1/flash/system_mac_address
echo 00:1c:73:dc:02:b0 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-LEAF2/flash/system_mac_address
echo 00:1c:73:dc:02:c0 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-LEAF3/flash/system_mac_address
echo 00:1c:73:dc:02:d0 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-LEAF4/flash/system_mac_address
echo 00:1c:73:dc:02:e0 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-LEAF5/flash/system_mac_address
echo 00:1c:73:dc:02:f0 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-LEAF6/flash/system_mac_address
echo 00:1c:73:dc:02:g0 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-BORDER1/flash/system_mac_address
echo 00:1c:73:dc:03:00 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-BORDER2/flash/system_mac_address
echo 00:1c:73:dc:03:10 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-WAN1/flash/system_mac_address
echo 00:1c:73:dc:03:20 > system_mac_address
sudo mv system_mac_address clab-evpn-dc-topo/DC-WAN2/flash/system_mac_address
more ../cv-onboarding-token-prd > cv-onboarding-token
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-SPINE1/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-SPINE2/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-LEAF1/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-LEAF2/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-LEAF3/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-LEAF4/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-LEAF5/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-LEAF6/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-BORDER1/flash/
sudo cp cv-onboarding-token clab-evpn-dc-topo/DC-BORDER2/flash/