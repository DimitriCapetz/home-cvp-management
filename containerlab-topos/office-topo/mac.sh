sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:f0/' clab-smu-topo/OFFICE-1-LEAF1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:00/' clab-smu-topo/OFFICE-1-LEAF2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:10/' clab-smu-topo/OFFICE-1-LEAF3/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:20/' clab-smu-topo/OFFICE-1-SPLINE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:30/' clab-smu-topo/OFFICE-1-SPLINE2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:40/' clab-smu-topo/OFFICE-2-LEAF1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:50/' clab-smu-topo/OFFICE-2-LEAF2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:60/' clab-smu-topo/OFFICE-2-SPLINE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:02:70/' clab-smu-topo/OFFICE-2-SPLINE2/flash/system_mac_address
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-1-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-1-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-1-LEAF3/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-1-SPLINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-1-SPLINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-2-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-2-LEAF2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-2-SPLINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token-prd clab-smu-topo/OFFICE-2-SPLINE2/flash/cv-onboarding-token