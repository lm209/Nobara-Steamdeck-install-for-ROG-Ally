!#/bin/bash
sudo frzr-unlock && curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_release.sh | sh && curl https://raw.githubusercontent.com/CryoByte33/steam-deck-utilities/main/install.sh | bash -s -- && sudo pacman -S python-setuptools --noconfirm && sudo systemctl stop handycon && sudo pacman -S base-devel --noconfirm  && curl -L https://github.com/Maclay74/steam-patch/releases/latest/download/install.sh | sh && cp -f /home/gamer/home/steam-patch /home/gamer/steam-patch && systemctl start steam-patch && pikaur -S paru-git --noconfirm  && paru -S asusctl --noconfirm  && pikaur -S rog-control-center --noconfirm && systemctl --user disable chimera && sudo systemctl start asusd && sudo reboot
