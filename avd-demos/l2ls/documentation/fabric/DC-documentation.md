# DC

## Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision | Serial Number |
| --- | ---- | ---- | ------------- | -------- | -------------------------- | ------------- |
| DC | leaf | dcapetz-DC-LEAF1 | 10.99.99.4/24 | cEOS | Provisioned | - |
| DC | leaf | dcapetz-DC-LEAF2 | 10.99.99.5/24 | cEOS | Provisioned | - |
| DC | leaf | dcapetz-DC-LEAF3 | 10.99.99.6/24 | cEOS | Provisioned | - |
| DC | leaf | dcapetz-DC-LEAF4 | 10.99.99.7/24 | cEOS | Provisioned | - |
| DC | l3spine | dcapetz-DC-SPINE1 | 10.99.99.2/24 | cEOS | Provisioned | - |
| DC | l3spine | dcapetz-DC-SPINE2 | 10.99.99.3/24 | cEOS | Provisioned | - |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

### Fabric Switches with inband Management IP

| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| leaf | dcapetz-DC-LEAF1 | Ethernet49/1 | l3spine | dcapetz-DC-SPINE1 | Ethernet1/1 |
| leaf | dcapetz-DC-LEAF1 | Ethernet50/1 | l3spine | dcapetz-DC-SPINE2 | Ethernet1/1 |
| leaf | dcapetz-DC-LEAF1 | Ethernet55/1 | mlag_peer | dcapetz-DC-LEAF2 | Ethernet55/1 |
| leaf | dcapetz-DC-LEAF1 | Ethernet56/1 | mlag_peer | dcapetz-DC-LEAF2 | Ethernet56/1 |
| leaf | dcapetz-DC-LEAF2 | Ethernet49/1 | l3spine | dcapetz-DC-SPINE1 | Ethernet2/1 |
| leaf | dcapetz-DC-LEAF2 | Ethernet50/1 | l3spine | dcapetz-DC-SPINE2 | Ethernet2/1 |
| leaf | dcapetz-DC-LEAF3 | Ethernet49/1 | l3spine | dcapetz-DC-SPINE1 | Ethernet3/1 |
| leaf | dcapetz-DC-LEAF3 | Ethernet50/1 | l3spine | dcapetz-DC-SPINE2 | Ethernet3/1 |
| leaf | dcapetz-DC-LEAF3 | Ethernet55/1 | mlag_peer | dcapetz-DC-LEAF4 | Ethernet55/1 |
| leaf | dcapetz-DC-LEAF3 | Ethernet56/1 | mlag_peer | dcapetz-DC-LEAF4 | Ethernet56/1 |
| leaf | dcapetz-DC-LEAF4 | Ethernet49/1 | l3spine | dcapetz-DC-SPINE1 | Ethernet4/1 |
| leaf | dcapetz-DC-LEAF4 | Ethernet50/1 | l3spine | dcapetz-DC-SPINE2 | Ethernet4/1 |
| l3spine | dcapetz-DC-SPINE1 | Ethernet31/1 | mlag_peer | dcapetz-DC-SPINE2 | Ethernet31/1 |
| l3spine | dcapetz-DC-SPINE1 | Ethernet32/1 | mlag_peer | dcapetz-DC-SPINE2 | Ethernet32/1 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |

### Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 10.1.0.0/24 | 256 | 2 | 0.79 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| DC | dcapetz-DC-SPINE1 | 10.1.0.1/32 |
| DC | dcapetz-DC-SPINE2 | 10.1.0.2/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------ | ------------------- | ------------------ | ------------------ |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
