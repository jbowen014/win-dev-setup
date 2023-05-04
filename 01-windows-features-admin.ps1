#--- Enable developer mode on the system. Needed for creating Windows Store Apps ---
#Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1

Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName Containers -All
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName Microsoft-Hyper-V -All
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName Microsoft-Windows-Subsystem-Linux -All
Restart-Computer
