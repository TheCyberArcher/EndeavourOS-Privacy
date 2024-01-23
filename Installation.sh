#!/bin/sh

echo "-------------Bienvenue sur le script d'installation EndeavourOS-------------------"

sleep 2

echo "--- Configuration du DNS en cours"

nmcli con mod "Connexion filaire 1" ipv4.ignore-auto-dns yes
nmcli con mod "Connexion filaire 1" ipv4.dns "45.90.28.250 45.90.30.250 9.9.9.9 149.112.112.112 1.1.1.1"

echo "--- Verification de la connectivité"

ping aur.archlinux.org -c 5

echo "--- Connexion établie"

echo "--- Installation et configuration du pare-feu restrictif ---"

yay -S firewalld

systemctl enable firewalld
systemctl start firewalld

firewall-cmd --state

firewall-cmd --set-default-zone=block

echo "---Installation du pare-feu terminée"

echo "--- Installation de la connexion VPN ---"

yay -S mullvad-vpn-bin

mullvad auto-connect set on
mullvad lan set allow
mullvad dns set default --block-ads --block-trackers --block-malware --block-gambling --block-adult-content

echo "--- VPN installé"

echo "--- Installation des extensions gnome"

yay -S git

mkdir ~/.local/share/gnome-shell/extensions/

git clone https://github.com/aunetx/blur-my-shell.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/ubuntu/gnome-shell-extension-appindicator.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/d-go/quick-settings-avatar.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/corecoding/Vitals.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/RaphaelRochet/arch-update.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/daitj/gnome-display-brightness-ddcutil.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/fthx/no-overview.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/qwreey/quick-settings-tweaks.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/micheleg/dash-to-dock.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/pop-os/shell.git ~/.local/share/gnome-shell/extensions/
git clone https://github.com/GSConnect/gnome-shell-extension-gsconnect.git ~/.local/share/gnome-shell/extensions/

cd ~/.local/share/gnome-shell/extensions/

mv "blur-my-shell" "blur-my-shell@aunetx"
mv "gnome-shell-extension-appindicator" "appindicatorsupport@rgcjonas.gmail.com"
mv "quick-settings-avatar" "quick-settings-avatar@d-go"
mv "Vitals" "Vitals@CoreCoding.com"
mv "arch-update" "arch-update@RaphaelRochet"
mv "gnome-display-brightness-ddcutil" "display-brightness-ddcutil@themightydeity.github.com"
mv "no-overview" "no-overview@fthx"
mv "quick-settings-tweaks" "quick-settings-tweaks@qwreey"
mv "dash-to-dock" "dash-to-dock@micxgx.gmail.com"
mv "shell" "pop-shell@system76.com"
mv "gnome-shell-extension-gsconnect" "gsconnect@andyholmes.github.io"

echo "--- Démarrage de l'installation des logiciels"

yay -S librewolf-bin tor-browser-bin thunderbird keepassxc webapp-manager extension-manager qbittorrent btop onlyoffice-bin code virtualbox openrgb-bin corectrl ddcutil vlc corectrl  

echo "--- Liste de logiciels installée"

echo "--- Installation des fonctionnalités Flatpak"

yay -S flatpak

echo "--- Installation du logiciel de wallpaper animé"

flatpak install flathub io.github.jeffshee.Hidamari

echo "--- Mise à jour des pilotes graphiques Radeon ---"

yay –S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon

echo "--- Pilote Radeon à jour"

echo "--- Configuration de Corectrl"

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

echo "--- Installation du logiciel de Virtualisation"

yay -S virtualbox

echo "--- Configuration du logiciel de Virtualisation"

sudo usermod -a -G vboxusers $USER

echo "--- Configuration terminée"

echo "--- Installation des fonctionnalités Gaming"

yay –S steam lutris proton-ge-custom 

sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

echo "--- Installation terminée"

sleep 30


