# RUN ME FROM A NON-ADMIN POWERSHELL PROMPT
# SCRIPT MAY FAIL DUE TO ENVIRONMENT UPDATES AND REQUIRED REBOOTS BY PACKAGES.
# CAN SAFELY BE RE-RUN WITHOUT CAUSING RE-INSTALL OF ALL PACKAGES

# 1. Login as an admin user (Docker, Notepad++, draw.io, and SQL Server fail to install otherwise and need to be installed by downloading from their respective websites)
# 2. Install or Update 'App Installer' from the Windows Store first
# 3. Go to Settings -> Apps -> Optional Features
#    Click 'More Windows features'
#    Check Containers, Hyper-V, and Windows Subsystem for Linux. Ensure all child nodes are also checked.
#    Click OK and restart
# RUN ME FROM A NON-ADMIN POWERSHELL PROMPT
# AFTER RUNNING THIS SCRIPT, A REBOOT MAY BE REQUIRED FOR DOCKER DESKTOP TO RUN

# Docker
wsl --update
winget install Docker.DockerDesktop

# Frameworks
winget install Microsoft.DotNet.SDK.6
winget install Microsoft.DotNet.SDK.7
winget install OpenJS.NodeJS.LTS

# Browsers
winget install Google.Chrome
winget install Mozilla.Firefox

# Dev Tools
winget install Git.Git
winget install Microsoft.PowerShell
winget install Microsoft.WindowsTerminal
winget install Microsoft.VisualStudioCode
winget install Microsoft.VisualStudio.2022.Enterprise
winget install Postman.Postman
winget install icsharpcode.ILSpy

# Azure Tooling
winget install Microsoft.AzureCLI
winget install Microsoft.Azure.AZCopy.10
winget install Microsoft.Azure.StorageExplorer
winget install Microsoft.Azure.FunctionsCoreTools
winget install Microsoft.AzureDataStudio
winget install Microsoft.Azure.CosmosEmulator
#winget install paolosalvatori.ServiceBusExplorer

# Utils 
winget install Notepad++.Notepad++
winget install JGraph.Draw # diagrams.net (formally draw.io)

# SQL Server
#winget install Microsoft.SQLServer.2019.Developer
#docker pull mcr.microsoft.com/mssql/server:2022-latest
#docker run --name testsqllocal -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=[PasswordHere]" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
winget install Microsoft.SQLServerManagementStudio

# Optional 
#winget install SlackTechnologies.Slack

#--- File Explorer Settings ---
# Show hidden files
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Hidden -Value 1
# Show file extensions
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -Value 0
# Show protected OS files 
#Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name ShowSuperHidden -Value 1
# will expand explorer to the actual folder you're in
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
# Adds things back in your left pane like recycle bin
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
# Opens PC to This PC, not quick access
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
# Restart Explorer for changes to take affect
Stop-Process -ProcessName Explorer
#--- Enable developer mode on the system. Needs run as Admin ---
#Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1


# Azure CLI Extensions
Start-Process 'cmd' -Verb RunAs -ArgumentList '/c az extension add --name subscription'
Start-Process 'cmd' -Verb RunAs -ArgumentList '/c az extension add --name azure-devops'
