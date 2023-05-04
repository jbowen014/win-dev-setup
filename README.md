# win-dev-setup

Scripts for setting up a new Windows development machine for .NET and Azure development using winget.

**Note**: These work best if the logged-in user is an administrator. Docker Desktop, Notepad++, draw.io, and SQL Server fail to install otherwise and need to be installed by downloading them from their respective websites.

1. Run `01-windows-features-admin.ps1` from an admin powershell prompt. This will install the necessary features for containers.
1. Install or Update `App Installer` from the Windows Store. This ensures winget is installed.
1. Run `02-winget-script.ps1` from a non-admin powershell prompt.
