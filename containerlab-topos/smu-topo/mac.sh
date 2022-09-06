sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:90/' clab-smu-topo/SMU-CORE1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:a0/' clab-smu-topo/SMU-CORE2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:b0/' clab-smu-topo/SMU-AGG1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:c0/' clab-smu-topo/SMU-AGG2/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:d0/' clab-smu-topo/SMU-DIA1/flash/system_mac_address
sudo sed -i 's/..:..:..:..:..:../00:1c:73:dc:01:e0/' clab-smu-topo/SMU-DIA2/flash/system_mac_address
sudo cp ../cv-onboarding-token clab-smu-topo/SMU-CORE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-smu-topo/SMU-CORE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-smu-topo/SMU-AGG1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-smu-topo/SMU-AGG2/flash/cv-onboarding-token