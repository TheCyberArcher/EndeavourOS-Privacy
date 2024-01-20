# EndeavourOS – Configuration – Privacy and Productivity







### 1) Download EndeavourOS from the official website :
<br />
<br />
Download link : https://endeavouros.com/#Download
<br />

<br />
Take the latest release (AMD and Nvidia driver are integrated)
<br />
<br />

### 2) Create an USB Bootable Drive with USBdiskimager or any other soft to create usb bootable drive
<br />
Download Link : https://aur.archlinux.org/packages/usbimager

<br />

### 3) Select Gnome Desktop Environment 

<br />

(remove endeavourOS tools and gnome additionnals tools to obtain a clean and minimal install)

<br />
<br />
<br />

### 4) Select Systemd-boot for the bootloader choice

### 5) At the install of EndeavourOS, select Luks to take a full drive encryption with a master password

### 6) Verify the connectivity

<br />

```ping aur.archlinux.org```

<br />


### 7) Update

<br />

Open a shell and update all of the packages and kernel: ```yay -Syu```

Reboot the computer.

### 8) Customise the Desktop Environment with extensions

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

After this, open extension manager in gnome, install the mentioned extensions
and reboot the computer. Congratulation, your desktop environment is ready to be use !

### 9) Install a VPN

<br />

A VPN allows you to identify your IP and therefore remain anonymous. Add to this that most solutions also offer blocking of malicious sites, trackers and data collection by third parties.

<br />

Several VPNs exist, here we offer you the choice of Mullvad-VPN or Proton-VPN.These two players are the most reliable on the market, preference to Mullvad, who has been able to prove in many cases that his no logs policy is indeed valid.

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

### 10) DNS configuration

<br />

Open Gnome Settings and go to the network page.\
On your network media, open settings and go to IPV4.

The list of encrypted DNS is available on : [privacytools.io](https://www.privacytools.io/encrypted-dns)

At first, we set NextDNS, in secondary AdGuard and Cloudflare (if necessary) : 

``` 45.90.28.250, 45.90.30.250, 9.9.9.9, 149.112.112.112, 1.1.1.1 ```

These DNS will integrate feeds of malicious sites, with large blocking lists and also prevent data collection.\
Useful when you are not using the VPN, it will always be safer than using the one from Google or your ISP.

<br />

### 11) Tool installations

<br />

This part depends on your requirements, your needs and your use of the machine.\
These are the ones I use on a daily basis, but I will try to bring you the most privacy-friendly tools.\
The tools I list are not exhaustive.

-  [LibreWolf](https://librewolf.net/)

« This project is a custom and independent version of Firefox, with the primary goals of privacy, security and user freedom »

```yay –S librewolf-bin```

