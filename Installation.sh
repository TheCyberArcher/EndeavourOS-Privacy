#!/bin/sh

echo "-------------Bienvenue sur le script d'installation EndeavourOS-------------------"

sleep 5

echo "--- Configuration du DNS en cours"

sleep 5

nmcli con mod "Connexion filaire 1" ipv4.ignore-auto-dns yes
nmcli con mod "Connexion filaire 1" ipv4.dns "45.90.28.250 45.90.30.250 9.9.9.9 149.112.112.112 1.1.1.1"

echo "--- Verification de la connectivité"

sleep 5

ping aur.archlinux.org -c 5

echo "--- Connexion établie"

sleep 5

echo "--- Installation et configuration du pare-feu restrictif ---"

sleep 5

yay -S firewalld

sudo systemctl enable firewalld
sudo systemctl start firewalld

sudo firewall-cmd --state

sudo firewall-cmd --set-default-zone=block

echo "---Installation du pare-feu terminée"

sleep 3

echo "--- Installation de la connexion VPN ---"

yay -S mullvad-vpn-bin

mullvad auto-connect set on
mullvad lan set allow
mullvad dns set default --block-ads --block-trackers --block-malware --block-gambling --block-adult-content

echo "--- VPN installé"

sleep 5

echo "--- Démarrage de l'installation des logiciels"

sleep 5

yay -S librewolf-bin tor-browser-bin thunderbird keepassxc webapp-manager extension-manager qbittorrent btop onlyoffice-bin code virtualbox openrgb-bin corectrl ddcutil vlc corectrl  

echo "--- Liste de logiciels installée"

sleep 5

echo "--- Installation des fonctionnalités Flatpak"

sleep 5

yay -S flatpak

echo "--- Installation du logiciel de wallpaper animé"

sleep 5

flatpak install flathub io.github.jeffshee.Hidamari

echo "--- Mise à jour des pilotes graphiques Radeon ---"

sleep 5

yay –S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon

echo "--- Pilote Radeon à jour"

sleep 5

echo "--- Configuration de Corectrl"

sleep 5

sudo touch /etc/polkit-1/rules.d/90-corectrl.rules

echo " polkit.addRule(function(action, subject) {
    if ((action.id == "org.corectrl.helper.init" ||
         action.id == "org.corectrl.helperkiller.init") &&
        subject.local == true &&
        subject.active == true &&
        subject.isInGroup("your-user-group")) {
            return polkit.Result.YES;
    }
});" >> /etc/polkit-1/rules.d/90-corectrl.rules


echo "--- Configuration terminée"

sleep 3

echo "--- Installation du logiciel de Virtualisation"

yay -S virtualbox

sleep 3

echo "--- Configuration du logiciel de Virtualisation"

sudo usermod -a -G vboxusers $USER

sleep 3

echo "--- Configuration terminée"

sleep 5

echo "--- Installation des fonctionnalités Gaming"

sleep 6

yay –S steam lutris proton-ge-custom 

sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

echo "--- Installation terminée"

sleep 30


