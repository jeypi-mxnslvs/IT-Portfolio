# 08. Client VM Provisioning & Networking

## Overview
*(Documentation Placeholder)*

This section will document setting up a Windows 10/11 Workstation VM on the internal virtual switch and configuring its TCP/IP network adapter to use `DC01` (`10.10.10.10`) as its Primary DNS server.

## Planned Steps
1. Create Windows 10/11 Generation 2 VM in Hyper-V.
2. Bind Network Adapter to `Internal Switch`.
3. Set Static/DHCP IP address and point DNS to `10.10.10.10`.
4. Verify connectivity using `ping` and `nslookup home.local`.
