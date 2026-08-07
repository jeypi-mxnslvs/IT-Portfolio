# 06. Enterprise File Server & Permission Hardening

## Overview
This guide covers setting up shared folders, hardening access rights, and enforcing the AGDLP access control framework on Windows Server 2022.

## Key Hardening Steps
1. **Remove `Everyone` Group:** Default access permissions were purged from Share and NTFS Access Control Lists (ACLs).
2. **Assign `DL` Groups:** Shared permissions were granted exclusively to Domain Local resource groups (e.g., `DL_HR`).
3. **Explicit Permissions:** Granted Read/Write and Full Control to authorized security principals only.

## Step-by-Step Screenshots

### 1. Share Folder Creation & OU Structure Setup
![Creating Share Folder](../screenshots/06-file-server-permission/01-creating-share-folder-in-directory.png)
![Creating Folders for OUs](../screenshots/06-file-server-permission/02-creating-folders-for-OUs.png)

### 2. Share Permissions & Group Assignment
![Configure Share Permission](../screenshots/06-file-server-permission/03-configure-share-permission.png)
![Adding DL_HR Group into Permissions](../screenshots/06-file-server-permission/04-adding-dl_hr-group-into-permissions.png)
![Grant Permission for Read/Write](../screenshots/06-file-server-permission/05-grant-permission-for-read-write.png)
![Share Permission Done](../screenshots/06-file-server-permission/06-done.png)

### 3. Hardening Access Control (Removing Everyone & Assigning Full Control)
![Configure Advanced Sharing](../screenshots/06-file-server-permission/07-configure-advance-sharing.png)
![Remove Everyone Group](../screenshots/06-file-server-permission/08-remove-everyone-group.png)
![Added DL_HR for Permissions](../screenshots/06-file-server-permission/09-added-dl_hr-for-permissions.png)
![Granted with Full Control](../screenshots/06-file-server-permission/10-granted-with-full-control.png)

### 4. NTFS Security Verification & Membership Check
![Folders Security ACL](../screenshots/06-file-server-permission/11-folders-security.png)
![GG_HR Members](../screenshots/06-file-server-permission/12-gg_hr-members.png)
![DL_HR Members Of](../screenshots/06-file-server-permission/13-dl_hr-membersof.png)
