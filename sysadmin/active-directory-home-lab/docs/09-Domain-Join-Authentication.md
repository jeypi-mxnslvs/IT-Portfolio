# 09. Domain Join & User Authentication Testing

## Overview
*(Documentation Placeholder)*

This section will document joining the client workstation to the `home.local` Active Directory domain and testing AGDLP file share access control with departmental user accounts.

## Planned Steps
1. Join Windows 10/11 Workstation to `home.local` domain using Domain Admin credentials.
2. Restart client machine and log in using test user account (e.g. `jdoe`).
3. Map network drive to `\\DC01\Share` and test read/write permissions for `GG_HR` / `DL_HR`.
4. Confirm access restriction for unauthorized users.
