# 05. Active Directory Hierarchy & User/Group Management

## Overview
This document outlines the creation of the Organizational Unit (OU) structure and administrative user/group provisioning following the **AGDLP** (Account → Global Group → Domain Local Group → Permission) model.

## Directory Structure
```text
home.local
└── Corps-Object
    └── Departments
        ├── IT
        ├── HR
        └── Sales
```

## AGDLP Strategy
* **Accounts (A):** Individual user accounts (e.g. `jdoe`, `asmith`).
* **Global Groups (G):** Aggregates users by department/role (e.g., `GG_HR`).
* **Domain Local Groups (DL):** Assigned explicit resource access rights on servers/shares (e.g., `DL_HR`).

## Step-by-Step Screenshots

### 1. Organizational Unit Creation
![OU Directory Tree](../screenshots/05-ad-management/02-organizational-unit-directory.png)

### 2. User Account Creation & Password Configuration
![Creating Domain User](../screenshots/05-ad-management/01-creating-domain-user.png)
![IT Users OU](../screenshots/05-ad-management/03-IT-users.png)
![Creating Users in IT](../screenshots/05-ad-management/04-creating-new-users-in-IT.png)
![Adding Password to Users](../screenshots/05-ad-management/05-adding-password-to-users.png)

### 3. AGDLP Security Group Creation
![Creating Domain Local Group](../screenshots/05-ad-management/06-creating-new-domain-local-group.png)
![Creating Global Domain Group](../screenshots/05-ad-management/07-creating-new-global-domain-group.png)
![Showing All Directory Users](../screenshots/05-ad-management/08-showing-all-users.png)
