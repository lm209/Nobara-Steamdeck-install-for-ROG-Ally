# ChimeraOS-Rog-Ally-Install
Detailed description on how to install Steam like OS on your Ally !!!
ChimeraOS Asus Rog Ally Setting Up

ITS RECOMMENDED TO HAVE THE BIOS AND MCU FIRMWARE UP TO DATE! PLEASE UPDATE BEFORE, OVER MYASUS OR THE OFFICIAL DRIVER & SUPPORT SITE!

Note: This operating system is still under development. There could be errors and missing components. However, the operating system is in a stable state

#####################################################

Download the Windows Media Creation Tool and create a bootable USB Drive: https://www.microsoft.com/de-de/software-download/windows11 (not needed if you Download my Release)

Boot it up, Format and delete all Partitions

Leave the Partition to unallocated

Make a force Shutdown (hold the power button until it shutdown)

Go to the bios and "Disable Secure Boot under "Boot" Options.

Download this Build here: https://github.com/kzkzkzkzkzk/install-media/releases/tag/2023-09-05_81a7337 (not needed if you Download my Release)

Download Etcher and make a bootable USB Drive: https://etcher.balena.io/ (not needed if you Download my Release)

Boot it up

Connect to Wifi or Ethernet in the Setup

Select the SSD to install ChimeraOS

Select the "Advanced User Installation" and Install the "Unstable Build

Dont worry your buttons wont work at this stage. use the touch screen to go into Power then switch to desktop. 
The screen will look tiny, go to settings at the top and then Display change scaling to 200%
Follow next steps to enable buttons

##################################################

Now go to the Desktop mode and Open the Console Application.

Password is "gamer"

type in:

sudo frzr-unlock {This unlocks file system to allow changes)

curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_release.sh | sh

curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s --
Cryoutilites will then be in your desktop open it, agree password is gamer

Start Cryoutilities and change all to Recommended, reboot now

#################################################

Again to Console Application:

sudo pacman -S python-setuptools

sudo systemctl stop handycon

pikaur -Sy handygccs-git

type first "Y" and the second "N"

sudo systemctl enable --now handycon

sudo reboot

#################################################

Again:

systemctl --user disable chimera

sudo reboot

#################################################

To enable refresh rate changing on these devices, enable developer mode in steam and check the "Enable refresh rate changing with external displays" option.

#################################################
Next step will enable TDP adjustments to 40Watts this will be enabled on steam overlay {right AC button}.
go here and download this.
https://github.com/mengmeet/PowerControl
Navigate to here 
/home/homebrew/plugins.
Right click the folder and change permission from read only to read and write.
copy the folder you just downloaded into the plug in folder. Once your done change permissions back to read only.
Congrats you now have 40watt TDP installed in decky loader.
#####################################################
Next we will Tackle fan control, we are nearly done!
enter these one at a time in Terminal again!

sudo pacman -S base-devel

pikaur -S paru-git

 paru -S asusctl

 pikaur -S rog-control-center
 
sudo reboot
Once rebooted and back into Desktop you will see ROG app, open it click allow fan curve box then adjust them to your liking save/apply profile. and minimise app dont close it!
******UPDATE******
After you install asusctl enter this..

sudo systemctl start asusd

This should start the service everytine you start up 

########################################
To keep your system upto date use ateam overlay/settings/ check for update this will update both steam and chimeraOS
Thats it Welcome to Steam OS!!!!!!!!!
