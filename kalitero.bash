# Update and clean everything
sudo apt update && sudo apt full-upgrade -y --fix-missing && sudo apt dist-upgrade -y --fix-missing && sudo apt autoremove -y && sudo apt autoclean -y

# If you play on VMWare and did manual install you may need open-vm-tools to be reinstalled to work properly
#sudo apt install -y --reinstall open-vm-tools-desktop

# Install Ghidra
sudo apt install ghidra -y

# Install TOR
sudo apt install -y tor torbrowser-launcher

# Make a new directory to download tools
mkdir Tools
cd Tools/

# Get impacket
git clone https://github.com/SecureAuthCorp/impacket.git

# Get Responder
git clone https://github.com/lgandx/Responder.git

# Get C2Concealer
git clone https://github.com/FortyNorthSecurity/C2concealer.git
cd C2concealer
chmod u+x install.sh
sudo ./install.sh
cd ..

# Get Volatility 2.6
wget http://downloads.volatilityfoundation.org/releases/2.6/volatility_2.6_lin64_standalone.zip
unzip volatility_2.6_lin64_standalone.zip
rm volatility_2.6_lin64_standalone.zip

# Install MobSF and dependencies
sudo apt install python3-pip python3.9-venv -y
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git
cd Mobile-Security-Framework-MobSF
sudo ./setup.sh

# Reboot System
sudo reboot -f
