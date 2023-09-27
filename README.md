
Please follow this guide to install Nobara steamdeck version on the ROG Ally.

There has been alot of work done on this by none other than Glorious Eggroll the man of GEProton fame.

Download https://www.balena.io/etcher/ to burn the Nobara image to USB.

https://nobaraproject.org/download-nobara/# down load Nobara for steam deck

Tou can chose to dual boot during the install. choose the no swap option.


Once installed and updated do the following to enable Handy con and asusctl for fans and power profile options.

steps to enable handycon
______________________________________________________________________________________

git clone https://github.com/ShadowBlip/HandyGCCS.git

cd HandyGCCS

open terminal in folder then

sudo python -m pip install build wheel installer

sudo ./build.sh in HandyGCCS folder

sudo ln -s /usr/local/bin/handycon /usr/bin/handycon

sudo systemctl start handycon

sudo systemctl enable handycon

sudo systemctl status handycon

sudo reboot

Handycon is now fully working 

___________________________________________________________________________________________________

Next is Asusctl follow everything as described 
 
Open the Nobara Package Manager

Select "asusctl" and "asusctl-rog-gui" and click Apply

Open Console and Type:

sudo systemctl start asusd

sudo systemctl enable asusd

sudo systemctl status asusd

sudo reboot

__________________________________________________________________________________________________

Now we will disable Zram as its not the best for a 16GB handheld! and enable swapfile 16gb

sudo touch /etc/systemd/zram-generator.conf

sudo dnf remove zram-generator-defaults

reboot 

sudo dd if=/dev/zero of=/swapfile bs=1G count=16

sudo truncate -s 0 /swapfile

sudo chattr +C /swapfile

sudo dd if=/dev/zero of=/swapfile bs=1G count=16

sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile


now enter sudo nano /etc/fstab 

if there is a line that contains anything with swap in it delete the whole line then,

Add this to the end of the lines thats there,

/swapfile swap swap defaults 0 0

Reboot
______________________________________________________________________________________

Download Deckyloader from here 

curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_release.sh | sh


Cryoutilites from here 

curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s --


Start Cryoutilities and change all to Recommended, password is gamer as default or what ever you chose. reboot now

Enjoy your new steamdeck aka ROG ALLY!!!!

If you and ROG control as non steam game you can open in gamemaode and change your power preference 

optional install power tools in decky then go here and follow the instarutions for power control and tdp options 

https://github.com/hicder/PowerTools/releases/tag/v2.1









