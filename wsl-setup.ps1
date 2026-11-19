<#
.SYNOPSIS
Installs Kali Linux via WSL, sets up XFCE4 GUI, and configures XRDP.

.DESCRIPTION
This script automates the installation of Kali Linux on Windows. After the initial setup, it injects commands into the WSL environment to update packages, install the XFCE4 desktop, and start the XRDP service.
#>

Clear-Host

Write-Host "###############################" -ForegroundColor Cyan
Write-Host "# Windows Wsl Install power shell" -ForegroundColor Cyan
Write-Host "###############################`n" -ForegroundColor Cyan

# 1. List current distributions
Write-Host "[*] Listing current WSL distributions..." -ForegroundColor Yellow
wsl --list
Write-Host ""

# 2. Install Kali Linux
Write-Host "[*] Installing Kali Linux..." -ForegroundColor Yellow
wsl --install kali-linux
Write-Host ""

# Pause for user configuration
Write-Host "##############################################################" -ForegroundColor Red
Write-Host "[!] ATTENTION: If Kali Linux was just installed, a new window" -ForegroundColor Red
Write-Host "    has opened for you to create a UNIX username and password." -ForegroundColor Red
Write-Host "[!] Please complete that setup first." -ForegroundColor Red
Write-Host "##############################################################`n" -ForegroundColor Red
Pause

# 3. Install GUI (XFCE4)
Write-Host "`n###############################" -ForegroundColor Cyan
Write-Host "# Install GUI" -ForegroundColor Cyan
Write-Host "###############################`n" -ForegroundColor Cyan

Write-Host "[*] Updating repositories and installing XFCE4..." -ForegroundColor Yellow
Write-Host "    (You may be prompted to enter your Kali password for sudo)" -ForegroundColor DarkGray
wsl -d kali-linux -- sudo apt-get update
wsl -d kali-linux -- sudo apt-get install -y xfce4
Write-Host ""

# 4. Install Remote Service (XRDP)
Write-Host "###############################" -ForegroundColor Cyan
Write-Host "# Install Remote service" -ForegroundColor Cyan
Write-Host "###############################`n" -ForegroundColor Cyan

Write-Host "[*] Installing XRDP..." -ForegroundColor Yellow
wsl -d kali-linux -- sudo apt-get install -y xrdp
Write-Host ""

# 5. Start XRDP Service
Write-Host "###############################" -ForegroundColor Cyan
Write-Host "# Start Service xrdp" -ForegroundColor Cyan
Write-Host "###############################`n" -ForegroundColor Cyan

Write-Host "[*] Starting the XRDP service..." -ForegroundColor Yellow
wsl -d kali-linux -- sudo service xrdp start

Write-Host "`n[+] SETUP COMPLETE!" -ForegroundColor Green
Write-Host "[+] You can now open 'Remote Desktop Connection' in Windows and connect to 'localhost'." -ForegroundColor Green
