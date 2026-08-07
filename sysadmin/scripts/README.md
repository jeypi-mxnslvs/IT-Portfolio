# 🛠️ SysAdmin Automation & Scripting Library

This directory contains automated scripts categorized by language for system administration, user management, and file organization.

---

## 📁 Folder Structure & Scripts Overview

```text
sysadmin/scripts/
├── bash/         # Shell scripts for Linux system maintenance
├── powershell/   # PowerShell scripts for Active Directory & Windows Admin
└── python/       # Python automation scripts for file organization & tasks
```

---

### 🐧 1. Bash Scripts (`/bash`)
* **[`update.sh`](./bash/update.sh)**
  * Automated system package update and cache cleaning script for Arch / Debian Linux distributions.
  * Cleans package manager caches to free up disk space.

---

### ⚡ 2. PowerShell Scripts (`/powershell`)
* **[`Populate-IT-Users.ps1`](./powershell/Populate-IT-Users.ps1)**
  * Automated Active Directory user provisioning script.
  * Reads candidate names, generates standard usernames (`samAccountName` and `UPN`), creates 14-character secure temporary passwords, and targets specific Organizational Units (OUs).
  * Includes `-WhatIf` dry-run support via `[CmdletBinding(SupportsShouldProcess = $true)]`.

---

### 🐍 3. Python Scripts (`/python`)
* **[`pdf_organizer.py`](./python/pdf_organizer.py)**
  * Lightweight Python script that automatically monitors and cleans up the `Downloads` directory by categorizing PDF documents.
* **[`smart_sorter.py`](./python/smart_sorter.py)**
  * File classification tool that scans target directories, matches file extensions against custom rule sets, and sorts files into structured destination folders.
