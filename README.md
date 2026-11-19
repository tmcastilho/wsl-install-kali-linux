# WSL Kali Linux Setup

A simple, well-documented repository containing a PowerShell script to list current Windows Subsystem for Linux (WSL) distributions and install **Kali Linux**.

## 📋 Prerequisites

Before running this script, ensure that you have:
* **Windows 10** (Version 2004 or higher) or **Windows 11**.
* Administrator privileges on your Windows machine.
* A stable internet connection to download the Kali Linux distribution.

## 🚀 How to Use

1. **Clone the repository:**
   Open your terminal and clone this repository to your local machine.
   ```powershell
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. **Open PowerShell as Administrator:**
   Press the Windows key, type `PowerShell`, right-click on it, and select **"Run as Administrator"**.

3. **Allow Script Execution (If needed):**
   By default, Windows might block the execution of custom scripts. If you get an error when trying to run it, update your execution policy by running:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

4. **Run the script:**
   Execute the setup script from your terminal:
   ```powershell
   .\wsl-setup.ps1
   ```

## 🛠️ What the script does

1. **`wsl --list`**: Checks and displays the Linux distributions you already have installed on your system.
2. **`wsl --install kali-linux`**: Connects to the Microsoft Store via the command line to download and set up the official Kali Linux WSL environment.

## 📝 License

This project is open-source and available under the [MIT License](LICENSE).