sudo touch simple-dci-topo/DC1-SPINE1/flash/ceos-config
sudo touch simple-dci-topo/DC1-SPINE2/flash/ceos-config
sudo touch simple-dci-topo/DC1-LEAF1/flash/ceos-config
sudo touch simple-dci-topo/DC1-BORDER1/flash/ceos-config
sudo touch simple-dci-topo/DC2-BORDER2/flash/ceos-config
sudo touch simple-dci-topo/DC2-SPINE1/flash/ceos-config
sudo touch simple-dci-topo/DC2-SPINE2/flash/ceos-config
sudo touch simple-dci-topo/DC2-LEAF1/flash/ceos-config
sudo touch simple-dci-topo/DC2-BORDER1/flash/ceos-config
sudo touch simple-dci-topo/DC2-BORDER2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:00" >> simple-dci-topo/DC1-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:10" >> simple-dci-topo/DC1-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:20" >> simple-dci-topo/DC1-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:30" >> simple-dci-topo/DC1-BORDER1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:40" >> simple-dci-topo/DC1-BORDER2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:50" >> simple-dci-topo/DC2-SPINE1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:60" >> simple-dci-topo/DC2-SPINE2/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:70" >> simple-dci-topo/DC2-LEAF1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:80" >> simple-dci-topo/DC2-BORDER1/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:a0:00:90" >> simple-dci-topo/DC2-BORDER2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-SPINE1" >> simple-dci-topo/DC1-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-SPINE2" >> simple-dci-topo/DC1-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-LEAF1" >> simple-dci-topo/DC1-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=DC1-BORDER1" >> simple-dci-topo/DC1-BORDER1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-BORDER2" >> simple-dci-topo/DC2-BORDER2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-SPINE1" >> simple-dci-topo/DC2-SPINE1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-SPINE2" >> simple-dci-topo/DC2-SPINE2/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-LEAF1" >> simple-dci-topo/DC2-LEAF1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-BORDER1" >> simple-dci-topo/DC2-BORDER1/flash/ceos-config
sudo echo "SERIALNUMBER=DC2-BORDER2" >> simple-dci-topo/DC2-BORDER2/flash/ceos-config
sudo rm simple-dci-topo/DC1-SPINE1/flash/system_mac_address
sudo rm simple-dci-topo/DC1-SPINE2/flash/system_mac_address
sudo rm simple-dci-topo/DC1-LEAF1/flash/system_mac_address
sudo rm simple-dci-topo/DC1-BORDER1/flash/system_mac_address
sudo rm simple-dci-topo/DC2-BORDER2/flash/system_mac_address
sudo rm simple-dci-topo/DC2-SPINE1/flash/system_mac_address
sudo rm simple-dci-topo/DC2-SPINE2/flash/system_mac_address
sudo rm simple-dci-topo/DC2-LEAF1/flash/system_mac_address
sudo rm simple-dci-topo/DC2-BORDER1/flash/system_mac_address
sudo rm simple-dci-topo/DC2-BORDER2/flash/system_mac_address
sudo cp ../cv-onboarding-token simple-dci-topo/DC1-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC1-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC1-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC1-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC2-BORDER2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC2-SPINE1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC2-SPINE2/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC2-LEAF1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC2-BORDER1/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token simple-dci-topo/DC2-BORDER2/flash/cv-onboarding-token