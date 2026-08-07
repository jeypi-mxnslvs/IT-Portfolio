# 01. Virtual Machine Hardware Provisioning (Hyper-V)

## Overview
This document details the Generation 2 Virtual Machine setup for Domain Controller `DC01` on Windows Hyper-V.

## Configuration Specifications
* **Generation:** Generation 2 (UEFI Boot Enabled)
* **Memory:** 4096 MB RAM (Dynamic Memory Disabled for DC stability)
* **Processor:** 2 Virtual Processors assigned
* **Storage Controller:** SCSI Controller attached to `.vhdx` virtual disk
* **Network Adapters:**
  1. Default Switch (Management/WAN Access)
  2. Internal Switch (Dedicated Isolated Private Lab Network)

## Step-by-Step Screenshots

### 1. Firmware & Boot Order
![Firmware Setup](../screenshots/01-vm-setup/01-server-vm-firmware.png)

### 2. Memory Allocation
![Memory Setup](../screenshots/01-vm-setup/02-server-vm-memory.png)

### 3. Processor Cores
![Processor Setup](../screenshots/01-vm-setup/03-server-vm-processor.png)

### 4. SCSI Storage Controller
![SCSI Controller](../screenshots/01-vm-setup/04-server-vm-scsicontroller.png)
![SCSI Controller Disk](../screenshots/01-vm-setup/05-server-vm-scsicontroller.png)

### 5. Network Adapters Setup
![Default Switch](../screenshots/01-vm-setup/06-server-vm-network-adapter-default.png)
![Internal Switch](../screenshots/01-vm-setup/07-server-vm-network-adapter-internal.png)
