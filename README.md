--------------------------------------------------------------------------------------------------------
This is a "work-in-progress" Guide. All Thanks goes to @ripplingsnake for his great work to make this OS compatible with the Asus Rog Ally.
--------------------------------------------------------------------------------------------------------

1.

Please follow this Guide to install "Nobara Steam Deck" version on the ROG Ally.

There has been alot of work done on this by none other than Glorious Eggroll the man of GEProton fame.

Download the Nobara Steam Deck Edition from here https://nobaraproject.org/download-nobara/

Download https://www.balena.io/etcher/ to burn the Nobara image to USB.

Choose "Erase Partition" and choose "No Swap".

Wait for finishing installation and reboot into OS.

If he found Updates, just updating it.

________________________________________________________________________________________________________

2.

Open Console and type:

git clone https://github.com/ShadowBlip/HandyGCCS.git

cd HandyGCCS

sudo python -m pip install build wheel installer

sudo ./build.sh in HandyGCCS folder

sudo ln -s /usr/local/bin/handycon /usr/bin/handycon

sudo systemctl start handycon

sudo systemctl enable handycon

sudo systemctl status handycon

sudo reboot  

________________________________________________________________________________________________________

3.
 
Open Nobara Package Manager

Select "asusctl" and "asusctl-rog-gui" and click Apply

Now open Console and type:

sudo systemctl start asusd

sudo systemctl enable asusd

sudo systemctl status asusd

sudo reboot

________________________________________________________________________________________________________

4.

Now we will disable Zram as its not the best for a 16GB handheld! and enable swapfile 16gb

sudo touch /etc/systemd/zram-generator.conf

sudo dnf remove zram-generator-defaults

sudo reboot 

sudo dd if=/dev/zero of=/swapfile bs=1G count=16

sudo truncate -s 0 /swapfile

sudo chattr +C /swapfile

sudo dd if=/dev/zero of=/swapfile bs=1G count=16

sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile

now enter sudo nano /etc/fstab 

Add this to the end of the lines thats there,

/swapfile swap swap defaults 0 0

sudo reboot

________________________________________________________________________________________________________

5.

Download Deckyloader from here 

curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_release.sh | sh

Cryoutilites from here 

curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s --

Start Cryoutilities and change all to Recommended, password is what ever you choose by the Installation. Reboot now.

Enjoy your new Steam Deck aka ROG ALLY!!!!

If you add ROG control as Non-Steam Game, you can open it in Gamemode and change your Power-Preference.










