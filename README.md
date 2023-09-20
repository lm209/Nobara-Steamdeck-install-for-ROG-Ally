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
Alternitivly if you have Chimera already installed downlaod the auto update file here and run it to get latest build.

Dont worry your buttons wont work at this stage. use the touch screen to go into Power then switch to desktop. 
The screen will look tiny, go to settings at the top and then Display change scaling to 200%
Follow next step to enable fan controls and tdp to 43 watt

##################################################

Now go to the Desktop mode and Open the Terminal Application.

If you are asked for a password the default password is gamer.

#####################################################
If you are not on the latest kernal download and run the auto update.sh (right click and run)

#####################################################
CLICK THE RAW FILE TO THE RIGHT OF HERE TO SEE THE COMMANDS AND COPY TO YOUR TERMINAL WINDOW DO NOT COPY AND PASTE FROM HERE 
The first step is to download steam-patch file from here, this will go to your download folder.
Open terminal and enter this

systemctl stop handycon

Then copy and paste this 

curl -L https://github.com/Maclay74/steam-patch/releases/latest/download/install.sh | sh

Now this do one command line at a time!
#################################################################
sudo su     
cp -f /home/gamer/Downloads/steam-patch /home/gamer/steam-patch
systemctl daemon-reload
systemctl enable steam-patch.service
systemctl start steam-patch.service
##################################################################
You should now have 43watt tpd control in steam gamemode overlay under power options.
##########################################
Next on list is Cryoutilities and deckyloader here- 

curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_release.sh | sh
curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s --

Start Cryoutilities and change all to Recommended, reboot now

##########################################
Now fan controls-

Adding Fan Curve Setting with Console:

sudo pacman -S base-devel

pikaur -S rog-control-center

Open Rog Control Center

Setting up your Curve Profiles and save it in the GUI

sudo systemctl start asusd

sudo reboot

If you Update rog-control-center then Type this:

systemctl daemon-reload

systemctl restart asusd
#########################################################

Please note this is not supported by the offical Chimera team and is custom patches i am only trying to help users have a better handheld experiance, i only did the script the patches etc are someone else work!
#######################################
Enjoy!There are still bugs but a restart will fix them!


