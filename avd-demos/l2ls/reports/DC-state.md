# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed | Total Tests Skipped |
| ----------- | ------------------ | ------------------ | ------------------- |
| 144 | 110 | 10 | 24 |

### Summary Totals Device Under Test

| Device Under Test | Total Tests | Tests Passed | Tests Failed | Tests Skipped | Categories Failed | Categories Skipped |
| ------------------| ----------- | ------------ | ------------ | ------------- | ----------------- | ------------------ |
| dcapetz-DC-LEAF1 | 21 | 15 | 2 | 4 | Interfaces, System | Hardware |
| dcapetz-DC-LEAF2 | 21 | 15 | 2 | 4 | Interfaces, System | Hardware |
| dcapetz-DC-LEAF3 | 21 | 15 | 2 | 4 | Interfaces, System | Hardware |
| dcapetz-DC-LEAF4 | 21 | 15 | 2 | 4 | Interfaces, System | Hardware |
| dcapetz-DC-SPINE1 | 30 | 25 | 1 | 4 | System | Hardware |
| dcapetz-DC-SPINE2 | 30 | 25 | 1 | 4 | System | Hardware |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed | Tests Skipped |
| ------------- | ----------- | ------------ | ------------ | ------------- |
| BGP | 2 | 2 | 0 | 0 |
| Connectivity | 28 | 28 | 0 | 0 |
| Hardware | 24 | 0 | 0 | 24 |
| Interfaces | 70 | 66 | 4 | 0 |
| MLAG | 6 | 6 | 0 | 0 |
| Routing | 2 | 2 | 0 | 0 |
| System | 12 | 6 | 6 | 0 |

## Failed Test Results Summary

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |
| 15 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST1 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 20 | dcapetz-DC-LEAF1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 36 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST1 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 41 | dcapetz-DC-LEAF2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 57 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST2 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 62 | dcapetz-DC-LEAF3 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 78 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST2 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 83 | dcapetz-DC-LEAF4 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 113 | dcapetz-DC-SPINE1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 143 | dcapetz-DC-SPINE2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |

## All Test Results

| ID | Device Under Test | Categories | Test | Description | Inputs | Result | Messages |
| -- | ----------------- | ---------- | ---- | ----------- | ------ | -------| -------- |
| 1 | dcapetz-DC-LEAF1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet49/1 - Remote: dcapetz-DC-SPINE1 Ethernet1/1 | PASS | - |
| 2 | dcapetz-DC-LEAF1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet50/1 - Remote: dcapetz-DC-SPINE2 Ethernet1/1 | PASS | - |
| 3 | dcapetz-DC-LEAF1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet55/1 - Remote: dcapetz-DC-LEAF2 Ethernet55/1 | PASS | - |
| 4 | dcapetz-DC-LEAF1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet56/1 - Remote: dcapetz-DC-LEAF2 Ethernet56/1 | PASS | - |
| 5 | dcapetz-DC-LEAF1 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 6 | dcapetz-DC-LEAF1 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 7 | dcapetz-DC-LEAF1 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 8 | dcapetz-DC-LEAF1 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 9 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - SERVER_DC-HOST1_eth1 = 'up' | PASS | - |
| 10 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet49/1 - L2_dcapetz-DC-SPINE1_Ethernet1/1 = 'up' | PASS | - |
| 11 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet50/1 - L2_dcapetz-DC-SPINE2_Ethernet1/1 = 'up' | PASS | - |
| 12 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet55/1 - MLAG_dcapetz-DC-LEAF2_Ethernet55/1 = 'up' | PASS | - |
| 13 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet56/1 - MLAG_dcapetz-DC-LEAF2_Ethernet56/1 = 'up' | PASS | - |
| 14 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback255 - Dummy Loopback for CV Flow Tracking = 'up' | PASS | - |
| 15 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST1 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 16 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel491 - L2_SPINES_Port-Channel11 = 'up' | PASS | - |
| 17 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel551 - MLAG_dcapetz-DC-LEAF2_Port-Channel551 = 'up' | PASS | - |
| 18 | dcapetz-DC-LEAF1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 19 | dcapetz-DC-LEAF1 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 20 | dcapetz-DC-LEAF1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 21 | dcapetz-DC-LEAF1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 22 | dcapetz-DC-LEAF2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet49/1 - Remote: dcapetz-DC-SPINE1 Ethernet2/1 | PASS | - |
| 23 | dcapetz-DC-LEAF2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet50/1 - Remote: dcapetz-DC-SPINE2 Ethernet2/1 | PASS | - |
| 24 | dcapetz-DC-LEAF2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet55/1 - Remote: dcapetz-DC-LEAF1 Ethernet55/1 | PASS | - |
| 25 | dcapetz-DC-LEAF2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet56/1 - Remote: dcapetz-DC-LEAF1 Ethernet56/1 | PASS | - |
| 26 | dcapetz-DC-LEAF2 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 27 | dcapetz-DC-LEAF2 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 28 | dcapetz-DC-LEAF2 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 29 | dcapetz-DC-LEAF2 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 30 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - SERVER_DC-HOST1_eth2 = 'up' | PASS | - |
| 31 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet49/1 - L2_dcapetz-DC-SPINE1_Ethernet2/1 = 'up' | PASS | - |
| 32 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet50/1 - L2_dcapetz-DC-SPINE2_Ethernet2/1 = 'up' | PASS | - |
| 33 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet55/1 - MLAG_dcapetz-DC-LEAF1_Ethernet55/1 = 'up' | PASS | - |
| 34 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet56/1 - MLAG_dcapetz-DC-LEAF1_Ethernet56/1 = 'up' | PASS | - |
| 35 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback255 - Dummy Loopback for CV Flow Tracking = 'up' | PASS | - |
| 36 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST1 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 37 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel491 - L2_SPINES_Port-Channel11 = 'up' | PASS | - |
| 38 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel551 - MLAG_dcapetz-DC-LEAF1_Port-Channel551 = 'up' | PASS | - |
| 39 | dcapetz-DC-LEAF2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 40 | dcapetz-DC-LEAF2 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 41 | dcapetz-DC-LEAF2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 42 | dcapetz-DC-LEAF2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 43 | dcapetz-DC-LEAF3 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet49/1 - Remote: dcapetz-DC-SPINE1 Ethernet3/1 | PASS | - |
| 44 | dcapetz-DC-LEAF3 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet50/1 - Remote: dcapetz-DC-SPINE2 Ethernet3/1 | PASS | - |
| 45 | dcapetz-DC-LEAF3 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet55/1 - Remote: dcapetz-DC-LEAF4 Ethernet55/1 | PASS | - |
| 46 | dcapetz-DC-LEAF3 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet56/1 - Remote: dcapetz-DC-LEAF4 Ethernet56/1 | PASS | - |
| 47 | dcapetz-DC-LEAF3 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 48 | dcapetz-DC-LEAF3 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 49 | dcapetz-DC-LEAF3 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 50 | dcapetz-DC-LEAF3 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 51 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - SERVER_DC-HOST2_eth1 = 'up' | PASS | - |
| 52 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet49/1 - L2_dcapetz-DC-SPINE1_Ethernet3/1 = 'up' | PASS | - |
| 53 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet50/1 - L2_dcapetz-DC-SPINE2_Ethernet3/1 = 'up' | PASS | - |
| 54 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet55/1 - MLAG_dcapetz-DC-LEAF4_Ethernet55/1 = 'up' | PASS | - |
| 55 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet56/1 - MLAG_dcapetz-DC-LEAF4_Ethernet56/1 = 'up' | PASS | - |
| 56 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback255 - Dummy Loopback for CV Flow Tracking = 'up' | PASS | - |
| 57 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST2 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 58 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel491 - L2_SPINES_Port-Channel31 = 'up' | PASS | - |
| 59 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel551 - MLAG_dcapetz-DC-LEAF4_Port-Channel551 = 'up' | PASS | - |
| 60 | dcapetz-DC-LEAF3 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 61 | dcapetz-DC-LEAF3 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 62 | dcapetz-DC-LEAF3 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 63 | dcapetz-DC-LEAF3 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 64 | dcapetz-DC-LEAF4 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet49/1 - Remote: dcapetz-DC-SPINE1 Ethernet4/1 | PASS | - |
| 65 | dcapetz-DC-LEAF4 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet50/1 - Remote: dcapetz-DC-SPINE2 Ethernet4/1 | PASS | - |
| 66 | dcapetz-DC-LEAF4 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet55/1 - Remote: dcapetz-DC-LEAF3 Ethernet55/1 | PASS | - |
| 67 | dcapetz-DC-LEAF4 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet56/1 - Remote: dcapetz-DC-LEAF3 Ethernet56/1 | PASS | - |
| 68 | dcapetz-DC-LEAF4 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 69 | dcapetz-DC-LEAF4 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 70 | dcapetz-DC-LEAF4 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 71 | dcapetz-DC-LEAF4 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 72 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1 - SERVER_DC-HOST2_eth2 = 'up' | PASS | - |
| 73 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet49/1 - L2_dcapetz-DC-SPINE1_Ethernet4/1 = 'up' | PASS | - |
| 74 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet50/1 - L2_dcapetz-DC-SPINE2_Ethernet4/1 = 'up' | PASS | - |
| 75 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet55/1 - MLAG_dcapetz-DC-LEAF3_Ethernet55/1 = 'up' | PASS | - |
| 76 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet56/1 - MLAG_dcapetz-DC-LEAF3_Ethernet56/1 = 'up' | PASS | - |
| 77 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback255 - Dummy Loopback for CV Flow Tracking = 'up' | PASS | - |
| 78 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel1 - SERVER_DC-HOST2 = 'up' | FAIL | The following interface(s) are not in the expected state: ['Port-Channel1 is down/lowerLayerDown'] |
| 79 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel491 - L2_SPINES_Port-Channel31 = 'up' | PASS | - |
| 80 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel551 - MLAG_dcapetz-DC-LEAF3_Port-Channel551 = 'up' | PASS | - |
| 81 | dcapetz-DC-LEAF4 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 82 | dcapetz-DC-LEAF4 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 83 | dcapetz-DC-LEAF4 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 84 | dcapetz-DC-LEAF4 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 85 | dcapetz-DC-SPINE1 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: dcapetz-DC-SPINE2 (IP: 10.255.255.1) | PASS | - |
| 86 | dcapetz-DC-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1/1 - Remote: dcapetz-DC-LEAF1 Ethernet49/1 | PASS | - |
| 87 | dcapetz-DC-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2/1 - Remote: dcapetz-DC-LEAF2 Ethernet49/1 | PASS | - |
| 88 | dcapetz-DC-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3/1 - Remote: dcapetz-DC-LEAF3 Ethernet49/1 | PASS | - |
| 89 | dcapetz-DC-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet31/1 - Remote: dcapetz-DC-SPINE2 Ethernet31/1 | PASS | - |
| 90 | dcapetz-DC-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet32/1 - Remote: dcapetz-DC-SPINE2 Ethernet32/1 | PASS | - |
| 91 | dcapetz-DC-SPINE1 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4/1 - Remote: dcapetz-DC-LEAF4 Ethernet49/1 | PASS | - |
| 92 | dcapetz-DC-SPINE1 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 93 | dcapetz-DC-SPINE1 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 94 | dcapetz-DC-SPINE1 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 95 | dcapetz-DC-SPINE1 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 96 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1/1 - L2_dcapetz-DC-LEAF1_Ethernet49/1 = 'up' | PASS | - |
| 97 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2/1 - L2_dcapetz-DC-LEAF2_Ethernet49/1 = 'up' | PASS | - |
| 98 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3/1 - L2_dcapetz-DC-LEAF3_Ethernet49/1 = 'up' | PASS | - |
| 99 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet31/1 - MLAG_dcapetz-DC-SPINE2_Ethernet31/1 = 'up' | PASS | - |
| 100 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet32/1 - MLAG_dcapetz-DC-SPINE2_Ethernet32/1 = 'up' | PASS | - |
| 101 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4/1 - L2_dcapetz-DC-LEAF4_Ethernet49/1 = 'up' | PASS | - |
| 102 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 103 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback255 - Dummy Loopback for CV Flow Tracking = 'up' | PASS | - |
| 104 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel11 - L2_RACK1_Port-Channel491 = 'up' | PASS | - |
| 105 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel31 - L2_RACK2_Port-Channel491 = 'up' | PASS | - |
| 106 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel311 - MLAG_dcapetz-DC-SPINE2_Port-Channel311 = 'up' | PASS | - |
| 107 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Ten = 'up' | PASS | - |
| 108 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan20 - Twenty = 'up' | PASS | - |
| 109 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_L3 = 'up' | PASS | - |
| 110 | dcapetz-DC-SPINE1 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 111 | dcapetz-DC-SPINE1 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 112 | dcapetz-DC-SPINE1 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 113 | dcapetz-DC-SPINE1 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 114 | dcapetz-DC-SPINE1 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
| 115 | dcapetz-DC-SPINE2 | BGP | VerifyBGPSpecificPeers | Verifies the health of specific BGP peer(s). | BGP IPv4 Unicast Peer: dcapetz-DC-SPINE1 (IP: 10.255.255.0) | PASS | - |
| 116 | dcapetz-DC-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet1/1 - Remote: dcapetz-DC-LEAF1 Ethernet50/1 | PASS | - |
| 117 | dcapetz-DC-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet2/1 - Remote: dcapetz-DC-LEAF2 Ethernet50/1 | PASS | - |
| 118 | dcapetz-DC-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet3/1 - Remote: dcapetz-DC-LEAF3 Ethernet50/1 | PASS | - |
| 119 | dcapetz-DC-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet31/1 - Remote: dcapetz-DC-SPINE1 Ethernet31/1 | PASS | - |
| 120 | dcapetz-DC-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet32/1 - Remote: dcapetz-DC-SPINE1 Ethernet32/1 | PASS | - |
| 121 | dcapetz-DC-SPINE2 | Connectivity | VerifyLLDPNeighbors | Verifies that the provided LLDP neighbors are connected properly. | Local: Ethernet4/1 - Remote: dcapetz-DC-LEAF4 Ethernet50/1 | PASS | - |
| 122 | dcapetz-DC-SPINE2 | Hardware | VerifyEnvironmentCooling | Verifies the status of power supply fans and all fan trays. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentCooling test is not supported on cEOSLab. |
| 123 | dcapetz-DC-SPINE2 | Hardware | VerifyEnvironmentPower | Verifies the power supplies status. | Accepted States: 'ok' | SKIPPED | VerifyEnvironmentPower test is not supported on cEOSLab. |
| 124 | dcapetz-DC-SPINE2 | Hardware | VerifyTemperature | Verifies the device temperature. | - | SKIPPED | VerifyTemperature test is not supported on cEOSLab. |
| 125 | dcapetz-DC-SPINE2 | Hardware | VerifyTransceiversManufacturers | Verifies if all transceivers come from approved manufacturers. | Accepted Manufacturers: 'Arista Networks', 'Arastra, Inc.', 'Not Present' | SKIPPED | VerifyTransceiversManufacturers test is not supported on cEOSLab. |
| 126 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet1/1 - L2_dcapetz-DC-LEAF1_Ethernet50/1 = 'up' | PASS | - |
| 127 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet2/1 - L2_dcapetz-DC-LEAF2_Ethernet50/1 = 'up' | PASS | - |
| 128 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet3/1 - L2_dcapetz-DC-LEAF3_Ethernet50/1 = 'up' | PASS | - |
| 129 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet31/1 - MLAG_dcapetz-DC-SPINE1_Ethernet31/1 = 'up' | PASS | - |
| 130 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet32/1 - MLAG_dcapetz-DC-SPINE1_Ethernet32/1 = 'up' | PASS | - |
| 131 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Ethernet4/1 - L2_dcapetz-DC-LEAF4_Ethernet50/1 = 'up' | PASS | - |
| 132 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback0 - ROUTER_ID = 'up' | PASS | - |
| 133 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Loopback255 - Dummy Loopback for CV Flow Tracking = 'up' | PASS | - |
| 134 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel11 - L2_RACK1_Port-Channel491 = 'up' | PASS | - |
| 135 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel31 - L2_RACK2_Port-Channel491 = 'up' | PASS | - |
| 136 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Port-Channel311 - MLAG_dcapetz-DC-SPINE1_Port-Channel311 = 'up' | PASS | - |
| 137 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan10 - Ten = 'up' | PASS | - |
| 138 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan20 - Twenty = 'up' | PASS | - |
| 139 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4093 - MLAG_L3 = 'up' | PASS | - |
| 140 | dcapetz-DC-SPINE2 | Interfaces | VerifyInterfacesStatus | Verifies the status of the provided interfaces. | Interface Vlan4094 - MLAG = 'up' | PASS | - |
| 141 | dcapetz-DC-SPINE2 | MLAG | VerifyMlagStatus | Verifies the health status of the MLAG configuration. | - | PASS | - |
| 142 | dcapetz-DC-SPINE2 | Routing | VerifyRoutingProtocolModel | Verifies the configured routing protocol model. | Routing protocol model: multi-agent | PASS | - |
| 143 | dcapetz-DC-SPINE2 | System | VerifyNTP | Verifies if NTP is synchronised. | - | FAIL | The device is not synchronized with the configured NTP server(s): 'unsynchronised' |
| 144 | dcapetz-DC-SPINE2 | System | VerifyReloadCause | Verifies the last reload cause of the device. | - | PASS | - |
