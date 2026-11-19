# WSL Kali Linux & GUI Setup

A complete, well-documented repository containing a PowerShell script to install **Kali Linux** via WSL, set up a graphical user interface (**XFCE4**), and configure a Remote Desktop service (**XRDP**).

## 📋 Prerequisites

* **Windows 10** (Version 2004 or higher) or **Windows 11**.
* Administrator privileges on your Windows machine.
* Active internet connection.

## 🚀 How to Use

1. **Open PowerShell as Administrator:**
   Press the Windows key, type `PowerShell`, right-click on it, and select **"Run as Administrator"**.

2. **Allow Script Execution (If needed):**
   If Windows blocks the script, run this command once:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

3. **Run the script:**
   Navigate to the folder containing the script and execute it:
   ```powershell
   .\wsl-setup.ps1
   ```

4. **Follow the Prompts:**
   * The script will install Kali Linux and a new terminal window will pop up.
   * **Wait!** Create your UNIX username and password in that new window.
   * Once done, return to the PowerShell script and press Enter to continue installing the GUI and XRDP.

## 🛠️ Command Breakdown

If you prefer to run the commands manually, here is exactly what the script does:

### Windows WSL Install (PowerShell)
```powershell
# List current distros
wsl --list

# Install Kali Linux
wsl --install kali-linux
```

### Install GUI & Remote Service (Inside Kali Linux)
These commands are executed inside the Kali environment to install the desktop and remote desktop server:
```bash
# Install GUI
sudo apt-get install xfce4

# Install Remote service
sudo apt-get install xrdp

# Start Service xrdp
sudo /etc/init.d/xrdp start
# or
sudo service xrdp start
```

## 🖥️ Connecting to the GUI
Once the script is finished, open the Windows **Remote Desktop Connection** app (type `mstsc` in the Windows Start menu), connect to `localhost`, and log in with your Kali credentials!