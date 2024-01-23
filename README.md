# EndeavourOS – Configuration

<br />

>This page aims to list the configuration of my EndeavorOS handle, a distribution based on Archlinux. Its rolling release system allows this platform to be permanently up to date and benefit from the latest technologies. Here, I detail step by step how I configure my system to obtain both an OS that protects my privacy extensively, while obtaining ergonomics adapted to my productivity tasks. Also included are some additional features to cover gaming uses.

<br />

You can install manually or with the bash script available in [this repository](https://github.com/TheCyberArcher/EndeavourOS-Privacy/blob/main/Installation.sh).

<br />

[![Screen-principal.png](https://i.postimg.cc/g0MG9G5d/Screen-principal.png)](https://postimg.cc/zLRsKY8P)

---

### Basic Installation

- Download EndeavourOS from the official website : [EndeavourOS Latest Release](https://endeavouros.com/#Download)

>AMD and Nvidia driver are integrated. You will not need any further configuration and the system will install the necessary tools for you. 

<br />

- Create an USB Bootable Drive with [USBdiskimager](https://aur.archlinux.org/packages/usbimager)
- At the install select the [Gnome Desktop Environment](https://www.gnome.org/)

>Remove endeavourOS tools and gnome additionnals tools to obtain a clean and minimal install

<br />

- Select Systemd-boot for the bootloader choice
- At the install of EndeavourOS, select Luks to take a full drive encryption with a master password


---


### Verify the connectivity

<br />

Open a shell and paste this command : 

```ping aur.archlinux.org```

---


### Update

<br />

Open a shell and update all of the packages and kernel : ```yay -Syu``` \
Reboot the computer.

---

### Customise the Desktop Environment with extensions

Extensions are presents in https://extensions.gnome.org/List 

<br />

- [No overview at start-up](https://extensions.gnome.org/extension/4099/no-overview/)
- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
- [Pop Shell](https://aur.archlinux.org/packages/gnome-shell-extension-pop-shell-git)
- [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)
- [Brightness control using ddcutil](https://extensions.gnome.org/extension/2645/brightness-control-using-ddcutil/)
- [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
- [QSTweak Quick Settings Tweaker](https://extensions.gnome.org/extension/5446/quick-settings-tweaker/)

<br />

Optional

<br />

- [Blur My Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
- [User Avatar In Quick Settings](https://extensions.gnome.org/extension/5506/user-avatar-in-quick-settings/)
- [ArchLinux Update Indicator](https://extensions.gnome.org/extension/1010/archlinux-updates-indicator/)
- [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)

<br />

To simplify extension installation (similar to a manual install), use "extensions Manager"

<br />

Open a shell and paste : 

``` yay –S extension-manager ```

<br />

<img src="https://i.postimg.cc/TPsBq1Fy/Extension-manager.png)](https://postimg.cc/WDM9sN2j" alt="drawing" width="400"/>


After this, open extension manager in gnome, install the mentioned extensions
and reboot the computer. Congratulation, your desktop environment is ready to be use !

---

### Install a VPN

<br />

A VPN allows you to identify your IP and therefore remain anonymous. Add to this that most solutions also offer blocking of malicious sites, trackers and data collection by third parties.

<br />

>Several VPNs exist, here we offer you the choice of Mullvad-VPN or Proton-VPN.These two players are the most reliable on the market, preference to Mullvad, who has been able to prove in many cases that his no logs policy is indeed valid.

<br />

Mullvad : https://mullvad.net/fr  
Proton : https://protonvpn.com/fr

<br />

Paste in a shell : ``` yay –S mullvad-vpn-bin ```

or ``` yay –S protonvpn-gui ```

<br />

Open the VPN and set the connexion to « autostart ».
Enter your mullvad login, a unique code of numbers.
In VPN settings, choose DNS content blocker. Select Ads, Tracker, Malware, Gambling, Adult Content and Social Media.

<br />

[![Mullvad2.png](https://i.postimg.cc/C1MqFMmK/Mullvad2.png)](https://postimg.cc/B8y6p3WW)

---

### DNS configuration

<br />

Open Gnome Settings and go to the network page.\
On your network media, open settings and go to IPV4.

The list of encrypted DNS is available on : [privacytools.io](https://www.privacytools.io/encrypted-dns)

At first, we set NextDNS, in secondary AdGuard and Cloudflare (if necessary) : 

``` 45.90.28.250, 45.90.30.250, 9.9.9.9, 149.112.112.112, 1.1.1.1 ```

<br />

[![Network.png](https://i.postimg.cc/tC6YGVp5/Network.png)](https://postimg.cc/4mJJzyK7)

<br />

>These DNS will integrate feeds of malicious sites, with large blocking lists and also prevent data collection.\
Useful when you are not using the VPN, it will always be safer than using the one from Google or your ISP.

---

### Tools installation

<br />

This part depends on your requirements, your needs and your use of the machine.\
These are the ones I use on a daily basis, but I will try to bring you the most privacy-friendly tools.\
The tools I list are not exhaustive.

- [LibreWolf](https://librewolf.net/) : ```yay –S librewolf-bin``` 
- [TorBrowser](https://www.torproject.org/fr/download/) : ```yay –S tor-browser-bin```
- [Thunderbird](https://www.thunderbird.net/fr/) : ```yay –S thunderbird```
- [KeepassXC](https://keepassxc.org/) : ```yay –S keepassxc```
- [WebAppManager](https://github.com/linuxmint/webapp-manager) : ```yay –S webapp-manager```
- [Qbittorrent](https://www.qbittorrent.org/download) : ```yay –S qbittorrent```
- [Btop](https://github.com/aristocratos/btop) : ```yay –S btop```
- [OnlyOffice](https://www.onlyoffice.com/fr/) : ```yay –S onlyoffice-bin```
- [CodeOSS](https://flathub.org/apps/com.visualstudio.code-oss) : ```yay –S code```
- [OpenRGB](https://openrgb.org/) : ```yay –S openrgb-bin```

---

### Browser configuration

You can go to this site for more information about the LibreWolf secure browser : https://librewolf.net/docs/faq/

With LibreWolf you already get strong protection against any footprint on the internet. But to solidify the configuration and improve the experience, we will add some extensions:

- [Privacy Badger](https://addons.mozilla.org/fr/firefox/addon/privacy-badger17/) (Blocking against trackers)
- [Youtube Auto HD](https://addons.mozilla.org/fr/firefox/addon/youtube-auto-hd-fps/) (Sets a default resolution)
- [Ublock Origin](https://addons.mozilla.org/fr/firefox/addon/ublock-origin/) (Already included, blocks ads)

If you need additional protection, use the [tor-browser](https://www.torproject.org/fr/download/). In addition to accessing the unindexed web, you will have access to onion sites. Browser traffic will be routed through [TOR](https://www.torproject.org/fr/about/history/) in addition to already being encapsulated in your VPN connection.

---

### Virtualisation

<br />

The choice of virtualization tool will depend on what you need. Virtualbox can do the job very well.\
If you need passtrough GPU or optimal performance, better kernel level and therefore Quemu.

- [Virtualbox](https://www.virtualbox.org/) : ```yay –S virtualbox```
- [Quemu](https://www.qemu.org/) : ```qemu-desktop```

<br />

Be careful if you want to pass devices (Microphone) into your VM in virtualbox, you must add your user to the vboxusers group and restart.

```usermod –aG «your username» vboxusers```

---

### Control your GPU (Radeon Only)

<br />


If you use 3D applications or want to play video games, it is necessary to install a few things to improve the experience.
We will check if the drivers are up to date, then we will install CoreCTRL.

```yay –S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon```


Download : https://archlinux.org/packages/extra/x86_64/corectrl/ \
Documentation : https://gitlab.com/corectrl/corectrl


```yay –S corectrl```

Open corectrl and go to your GPU settings. You can make a manual ventilation curve, also go to the energy profile and select "performance".
In the tool settings, put corectrl on startup + minimized to tray.

<br />

To avoid having to type the password each time you open the session :

```sudo nano /etc/polkit-1/rules.d/90-corectrl.rules```

Paste the following contents : 

```

 polkit.addRule(function(action, subject) {
    if ((action.id == "org.corectrl.helper.init" ||
         action.id == "org.corectrl.helperkiller.init") &&
        subject.local == true &&
        subject.active == true &&
        subject.isInGroup("your-user-group")) {
            return polkit.Result.YES;
    }
});

```
<br />

To enable overclocking, GPU and memory frequency, add this parameter to your kernel load:

Path : ```/efi/loader/entries/```

Add this at the end of the line "options" : ```amdgpu.ppfeaturemask=0xffffffff```

Reboot the computer to load the new kernel parameter.

---

### ddcutil configuration

Edit the configuration file : 

```sudo nano /etc/modules-load.d/i2c.conf```

Paste this line : 

```i2c_dev```

Save the configuration and set type in a shell ```modprobe i2c_dev```


### Gaming on Linux

<br />

If you want to play with Linux, know that it is possible. Since 5 years, advances are enormous, especially with Valve which has pushed proton, a very efficient fork of wine.

- [Steam](https://store.steampowered.com/?l=french) : ```yay –S steam```

<br />

>Steam is the reference platform for playing on Linux, try to use it as much as possible to buy your games and make them work on Linux. This is the most plug and play solution.

To use games under Linux, you must activate proton in the steam settings : 

```SteamPlay : Enable Steam Play for supported titles```

<br />

For any game that does not work with proton steam, use this:

- [ProtonGE](https://github.com/GloriousEggroll/proton-ge-custom) : ```yay –S proton-ge-custom ```

<br />

Reboot steam and select this version of Proton on the game parameter.
Here is the site to check if a game runs well on Linux : [ProtonDB](https://www.protondb.com/)

<br />

Whenever you want to install outside of steam, go through lutris. Install lutris from AUR to benefit from the installation scripts.

- [Lutris](https://lutris.net/) : ```yay –S lutris```

<br />

Install Wine Lutris dependencies : 

```
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader
```

Then follow the lutris documentation to install your games simply : [Lutris Game Page](https://lutris.net/games)

---

### GALLERY

<br />


[![New.png](https://i.postimg.cc/CMjNMdhF/New.png)](https://postimg.cc/jCSNZxn9)

[![Launcher.png](https://i.postimg.cc/g0q564d0/Launcher.png)](https://postimg.cc/HJn3qwrG)

[![New2.png](https://i.postimg.cc/nc3qMD6t/New2.png)](https://postimg.cc/svZMNvjn)

[![Tilling.png](https://i.postimg.cc/257k84KQ/Tilling.png)](https://postimg.cc/f3kn80Zy)


