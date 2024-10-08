---
tags:
  - archinstall
  - archlinux
  - post-install
url: https://wiki.archlinux.org/title/General_recommendations
---

# Arch Linux - Post-Install Guide

See [General recommendations](https://wiki.archlinux.org/title/General_recommendations "General recommendations") for system management directions and post-installation tutorials 

- [ ] creating unprivileged user accounts
- [ ] setting up a graphical user interface
- [ ] sound 
- [ ] touchpad


```sh
# others
pacman -S git

# for openssh
pacman -S openssh
systemctl enable sshd
```



## AUR

```bash
# faster without go
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay -Syu