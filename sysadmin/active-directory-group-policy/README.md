# 🏢 Enterprise Active Directory & Group Policy Home Lab

![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![OS](https://img.shields.io/badge/OS-Windows%20Server%202022-blue)
![Hypervisor](https://img.shields.io/badge/Hypervisor-VirtualBox%20%2F%20VMware-orange)

---

## 📑 Table of Contents
1. [Network Topology & Specifications](#1-network-topology--specifications)
2. [Windows Server Installation & Initial Setup](#2-windows-server-installation--initial-setup)
3. [AD DS Installation & Domain Controller Promotion](#3-ad-ds-installation--domain-controller-promotion)
4. [DNS & DHCP Configuration](#4-dns--dhcp-configuration)
5. [Organizational Units & User Provisioning](#5-organizational-units--user-provisioning)
6. [Group Policy Object (GPO) Deployment](#6-group-policy-object-gpo-deployment)
7. [Verification & Client Domain Join](#7-verification--client-domain-join)
8. [Troubleshooting & Lessons Learned](#8-troubleshooting--lessons-learned)


---

## 1. Network Topology & Specifications


## 2. Windows Server Installation & Initial Setup

### Installation Walkthrough
1. Installed **Windows Server 2022 Standard (Desktop Experience)** on the primary virtual machine.
2. Configured the virtual network interface to use a **Default Switch / Private Switch**.

### Post-Installation Configuration
Before installing Active Directory:

* **Computer Name:** DC01
* **Static IP:** 192.168.10.1/24
* **Preferred DNS:** 127.0.0.1

### Figure 1: Static IP Configuration on DC01

## 3. Active Directory Installation
Installing AD DS:
```
	Installed the **Active Directory Domain Services** role.
	Promoted the server as the first Domain Controller.
	Created a new forest:
	home.local
```	

## PowerShell

### Install AD DS
`
Install-WindowsFeature 
	-Name AD-Domain-Services
	-IncludeManagementTools
`

### Create Forest
`
Install-ADDSForest 
	-DomainName "home.local" 
	-InstallDNS 
	-Force
`
### Figure 2: Successful promotion of DC01

## 4. DNS & DHCP Configuration


## 5. Organizational Units
OU Structure
```
	home.local
	└── HOME_OU
	    ├── Departments
	    │   ├── IT
	    │   ├── HR
	    │   └── Sales
	    ├── Groups
	    └── Computers
```
### Figure 3: Photo of OU Structure
### Figure 4: Create a User
