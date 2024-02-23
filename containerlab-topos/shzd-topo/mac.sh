sudo touch clab-shzd-topo/mlsctc01shzd01/flash/ceos-config
sudo touch clab-shzd-topo/mlsctc01shzd02/flash/ceos-config
sudo touch clab-shzd-topo/mlselr01shzd01/flash/ceos-config
sudo touch clab-shzd-topo/mlselr01shzd02/flash/ceos-config
sudo touch clab-shzd-topo/mlsctc01dbr0X/flash/ceos-config
sudo touch clab-shzd-topo/mlselr01dbr0X/flash/ceos-config
sudo touch clab-shzd-topo/optumcore-ctcXhzX-00-sl00/flash/ceos-config
sudo touch clab-shzd-topo/optumcore-elrXhzX-00-sl00/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:10" >> clab-shzd-topo/mlsctc01shzd01/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:20" >> clab-shzd-topo/mlsctc01shzd02/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:30" >> clab-shzd-topo/mlselr01shzd01/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:40" >> clab-shzd-topo/mlselr01shzd02/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:50" >> clab-shzd-topo/mlsctc01dbr0X/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:60" >> clab-shzd-topo/mlselr01dbr0X/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:70" >> clab-shzd-topo/optumcore-ctcXhzX-00-sl00/flash/ceos-config
sudo echo "SYSTEMMACADDR=00:1c:73:dc:00:80" >> clab-shzd-topo/optumcore-elrXhzX-00-sl00/flash/ceos-config
sudo echo "SERIALNUMBER=mlsctc01shzd01" >> clab-shzd-topo/mlsctc01shzd01/flash/ceos-config
sudo echo "SERIALNUMBER=mlsctc01shzd02" >> clab-shzd-topo/mlsctc01shzd02/flash/ceos-config
sudo echo "SERIALNUMBER=mlselr01shzd01" >> clab-shzd-topo/mlselr01shzd01/flash/ceos-config
sudo echo "SERIALNUMBER=mlselr01shzd02" >> clab-shzd-topo/mlselr01shzd02/flash/ceos-config
sudo echo "SERIALNUMBER=mlsctc01dbr0X" >> clab-shzd-topo/mlsctc01dbr0X/flash/ceos-config
sudo echo "SERIALNUMBER=mlselr01dbr0X" >> clab-shzd-topo/mlselr01dbr0X/flash/ceos-config
sudo echo "SERIALNUMBER=optumcore-ctcXhzX-00-sl00" >> clab-shzd-topo/optumcore-ctcXhzX-00-sl00/flash/ceos-config
sudo echo "SERIALNUMBER=optumcore-elrXhzX-00-sl00" >> clab-shzd-topo/optumcore-elrXhzX-00-sl00/flash/ceos-config
sudo rm clab-shzd-topo/mlsctc01shzd01/flash/system_mac_address
sudo rm clab-shzd-topo/mlsctc01shzd02/flash/system_mac_address
sudo rm clab-shzd-topo/mlselr01shzd01/flash/system_mac_address
sudo rm clab-shzd-topo/mlselr01shzd02/flash/system_mac_address
sudo rm clab-shzd-topo/mlsctc01dbr0X/flash/system_mac_address
sudo rm clab-shzd-topo/mlselr01dbr0X/flash/system_mac_address
sudo rm clab-shzd-topo/optumcore-ctcXhzX-00-sl00/flash/system_mac_address
sudo rm clab-shzd-topo/optumcore-elrXhzX-00-sl00/flash/system_mac_address
sudo cp ../cv-onboarding-token clab-shzd-topo/mlsctc01shzd01/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-shzd-topo/mlsctc01shzd02/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-shzd-topo/mlselr01shzd01/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-shzd-topo/mlselr01shzd02/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-shzd-topo/mlsctc01dbr0X/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-shzd-topo/mlselr01dbr0X/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-shzd-topo/optumcore-ctcXhzX-00-sl00/flash/cv-onboarding-token
sudo cp ../cv-onboarding-token clab-shzd-topo/optumcore-elrXhzX-00-sl00/flash/cv-onboarding-token