# dcapetz-DC-LEAF5

## Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [IP Name Servers](#ip-name-servers)
  - [Domain Lookup](#domain-lookup)
  - [Clock Settings](#clock-settings)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [Enable Password](#enable-password)
  - [AAA Authorization](#aaa-authorization)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
  - [Flow Tracking](#flow-tracking)
- [MLAG](#mlag)
  - [MLAG Summary](#mlag-summary)
  - [MLAG Device Configuration](#mlag-device-configuration)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Device Configuration](#internal-vlan-allocation-policy-device-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [MAC Address Table](#mac-address-table)
  - [MAC Address Table Summary](#mac-address-table-summary)
  - [MAC Address Table Device Configuration](#mac-address-table-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [ARP](#arp)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | Description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | OOB_MANAGEMENT | oob | management | 10.99.99.8/24 | 10.99.99.1 |

##### IPv6

| Management Interface | Description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | OOB_MANAGEMENT | oob | management | - | - |

#### Management Interfaces Device Configuration

```eos
!
interface Management1
   description OOB_MANAGEMENT
   no shutdown
   vrf management
   ip address 10.99.99.8/24
```

### DNS Domain

DNS domain: dime-a-tron.com

#### DNS Domain Device Configuration

```eos
dns domain dime-a-tron.com
!
```

### IP Name Servers

#### IP Name Servers Summary

| Name Server | VRF | Priority |
| ----------- | --- | -------- |
| 1.1.1.1 | management | - |

#### IP Name Servers Device Configuration

```eos
ip name-server vrf management 1.1.1.1
```

### Domain Lookup

#### DNS Domain Lookup Summary

| Source interface | vrf |
| ---------------- | --- |
| Management1 | management |

#### DNS Domain Lookup Device Configuration

```eos
ip domain lookup vrf management source-interface Management1
```

### Clock Settings

#### Clock Timezone Settings

Clock Timezone is set to **CST6CDT**.

#### Clock Device Configuration

```eos
!
clock timezone CST6CDT
```

### NTP

#### NTP Summary

##### NTP Local Interface

| Interface | VRF |
| --------- | --- |
| Management1 | management |

##### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| 137.70.8.5 | management | - | - | True | - | - | - | - | - |

#### NTP Device Configuration

```eos
!
ntp local-interface vrf management Management1
ntp server vrf management 137.70.8.5 iburst
```

### Management API HTTP

#### Management API HTTP Summary

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

#### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| management | - | - |

#### Management API HTTP Device Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf management
      no shutdown
```

## Authentication

### Local Users

#### Local Users Summary

| User | Privilege | Role | Disabled | Shell |
| ---- | --------- | ---- | -------- | ----- |
| admin | 15 | network-admin | False | - |

#### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin secret sha512 <removed>
```

### Enable Password

Enable password has been disabled

### AAA Authorization

#### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | local |

Authorization for configuration commands is disabled.

#### AAA Authorization Device Configuration

```eos
aaa authorization exec default local
!
```

## Monitoring

### TerminAttr Daemon

#### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | apiserver.arista.io:443 | management | token-secure,/mnt/flash/cv-onboarding-token | ale,flexCounter,hardware,kni,pulse,strata | - | True |

#### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=apiserver.arista.io:443 -cvauth=token-secure,/mnt/flash/cv-onboarding-token -cvvrf=management -disableaaa -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -taillogs -cvsourceintf=Management1
   no shutdown
```

### Flow Tracking

#### Flow Tracking Sampled

| Sample Size | Minimum Sample Size | Hardware Offload for IPv4 | Hardware Offload for IPv6 | Encapsulations |
| ----------- | ------------------- | ------------------------- | ------------------------- | -------------- |
| 10000 | default | disabled | disabled | - |

##### Trackers Summary

| Tracker Name | Record Export On Inactive Timeout | Record Export On Interval | MPLS | Number of Exporters | Applied On | Table Size |
| ------------ | --------------------------------- | ------------------------- | ---- | ------------------- | ---------- | ---------- |
| CV-FLOW-TRACKING | 120000 | 1000 | - | 1 |  | - |

##### Exporters Summary

| Tracker Name | Exporter Name | Collector IP/Host | Collector Port | Local Interface |
| ------------ | ------------- | ----------------- | -------------- | --------------- |
| CV-FLOW-TRACKING | CVaaS | - | - | Loopback255 |

#### Flow Tracking Device Configuration

```eos
!
flow tracking sampled
   sample 10000
   tracker CV-FLOW-TRACKING
      record export on inactive timeout 120000
      record export on interval 1000
      exporter CVaaS
         collector 127.0.0.1
         local interface Loopback255
         template interval 5000
   no shutdown
```

## MLAG

### MLAG Summary

| Domain-id | Local-interface | Peer-address | Peer-link |
| --------- | --------------- | ------------ | --------- |
| RACK3 | Vlan4094 | 10.255.255.255 | Port-Channel551 |

Dual primary detection is disabled.

### MLAG Device Configuration

```eos
!
mlag configuration
   domain-id RACK3
   local-interface Vlan4094
   peer-address 10.255.255.255
   peer-link Port-Channel551
   reload-delay mlag 300
   reload-delay non-mlag 330
```

## Spanning Tree

### Spanning Tree Summary

STP mode: **mstp**

#### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 16384 |

#### Global Spanning-Tree Settings

- Spanning Tree disabled for VLANs: **4094**

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
no spanning-tree vlan-id 4094
spanning-tree mst 0 priority 16384
```

## Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Device Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## VLANs

### VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 30 | Thirty | - |
| 40 | Forty | - |
| 4094 | MLAG | MLAG |

### VLANs Device Configuration

```eos
!
vlan 30
   name Thirty
!
vlan 40
   name Forty
!
vlan 4094
   name MLAG
   trunk group MLAG
```

## MAC Address Table

### MAC Address Table Summary

- MAC address table entry maximum age: 1200 seconds

### MAC Address Table Device Configuration

```eos
!
mac address-table aging-time 1200
```

## Interfaces

### Ethernet Interfaces

#### Ethernet Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet1 | SERVER_DC-HOST3_eth1 | *access | *30 | *- | *- | 1 |
| Ethernet49/1 | L2_dcapetz-DC-SPINE1_Ethernet5/1 | *trunk | *30,40 | *- | *- | 491 |
| Ethernet50/1 | L2_dcapetz-DC-SPINE2_Ethernet5/1 | *trunk | *30,40 | *- | *- | 491 |
| Ethernet55/1 | MLAG_dcapetz-DC-LEAF6_Ethernet55/1 | *trunk | *- | *- | *MLAG | 551 |
| Ethernet56/1 | MLAG_dcapetz-DC-LEAF6_Ethernet56/1 | *trunk | *- | *- | *MLAG | 551 |

*Inherited from Port-Channel Interface

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description SERVER_DC-HOST3_eth1
   no shutdown
   channel-group 1 mode active
!
interface Ethernet49/1
   description L2_dcapetz-DC-SPINE1_Ethernet5/1
   no shutdown
   channel-group 491 mode active
!
interface Ethernet50/1
   description L2_dcapetz-DC-SPINE2_Ethernet5/1
   no shutdown
   channel-group 491 mode active
!
interface Ethernet55/1
   description MLAG_dcapetz-DC-LEAF6_Ethernet55/1
   no shutdown
   channel-group 551 mode active
!
interface Ethernet56/1
   description MLAG_dcapetz-DC-LEAF6_Ethernet56/1
   no shutdown
   channel-group 551 mode active
```

### Port-Channel Interfaces

#### Port-Channel Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel1 | SERVER_DC-HOST3 | access | 30 | - | - | - | - | 1 | - |
| Port-Channel491 | L2_SPINES_Port-Channel51 | trunk | 30,40 | - | - | - | - | 491 | - |
| Port-Channel551 | MLAG_dcapetz-DC-LEAF6_Port-Channel551 | trunk | - | - | MLAG | - | - | - | - |

#### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel1
   description SERVER_DC-HOST3
   no shutdown
   switchport access vlan 30
   switchport mode access
   switchport
   mlag 1
   spanning-tree portfast
!
interface Port-Channel491
   description L2_SPINES_Port-Channel51
   no shutdown
   switchport trunk allowed vlan 30,40
   switchport mode trunk
   switchport
   mlag 491
!
interface Port-Channel551
   description MLAG_dcapetz-DC-LEAF6_Port-Channel551
   no shutdown
   switchport mode trunk
   switchport trunk group MLAG
   switchport
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback255 | Dummy Loopback for CV Flow Tracking | default | 223.255.255.254/32 |

##### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback255 | Dummy Loopback for CV Flow Tracking | default | - |

#### Loopback Interfaces Device Configuration

```eos
!
interface Loopback255
   description Dummy Loopback for CV Flow Tracking
   ip address 223.255.255.254/32
```

### VLAN Interfaces

#### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan4094 | MLAG | default | 1500 | False |

##### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ------ | ------- |
| Vlan4094 |  default  |  10.255.255.254/31  |  -  |  -  |  -  |  -  |

#### VLAN Interfaces Device Configuration

```eos
!
interface Vlan4094
   description MLAG
   no shutdown
   mtu 1500
   no autostate
   ip address 10.255.255.254/31
```

## Routing

### Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

### IP Routing

#### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| management | False |

#### IP Routing Device Configuration

```eos
no ip routing vrf management
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| management | false |

### Static Routes

#### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP | Exit interface | Administrative Distance | Tag | Route Name | Metric |
| --- | ------------------ | ----------- | -------------- | ----------------------- | --- | ---------- | ------ |
| management | 0.0.0.0/0 | 10.99.99.1 | - | 1 | - | - | - |

#### Static Routes Device Configuration

```eos
!
ip route vrf management 0.0.0.0/0 10.99.99.1
```

### ARP

Global ARP timeout: 900

#### ARP Device Configuration

```eos
!
arp aging timeout default 900
```

## Multicast

### IP IGMP Snooping

#### IP IGMP Snooping Summary

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

#### IP IGMP Snooping Device Configuration

```eos
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| management | disabled |

### VRF Instances Device Configuration

```eos
!
vrf instance management
```
