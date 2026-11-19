<#
.SYNOPSIS
    Lists installed WSL distributions and installs Kali Linux.

.DESCRIPTION
    This script provides a quick and automated way to list currently available
    Windows Subsystem for Linux (WSL) distributions and proceed with the
    installation of Kali Linux via the command line.

.NOTES
    Author: Your Name
    Requires: Windows 10/11 with WSL features enabled. Must be run as Administrator.
#>

# Clear the screen for a cleaner output
Clear-Host

Write-Host "################################################" -ForegroundColor Cyan
Write-Host "#       Windows WSL Listing and Install        #" -ForegroundColor Cyan
Write-Host "################################################`n" -ForegroundColor Cyan

# 1. List currently installed distributions
Write-Host "[*] Fetching currently installed WSL distributions..." -ForegroundColor Yellow
Write-Host "------------------------------------------------" -ForegroundColor DarkGray
wsl --list
Write-Host "------------------------------------------------`n" -ForegroundColor DarkGray

# 2. Install Kali Linux
Write-Host "[*] Starting the installation of Kali Linux..." -ForegroundColor Yellow
Write-Host "[!] Note: This may prompt a new window or require a system restart." -ForegroundColor Red
Write-Host "------------------------------------------------" -ForegroundColor DarkGray

wsl --install kali-linux

Write-Host "------------------------------------------------`n" -ForegroundColor DarkGray
Write-Host "[+] Script execution completed." -ForegroundColor Green