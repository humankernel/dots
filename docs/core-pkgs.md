# Core Pkgs

|                     |                                                                 |
| ------------------- | --------------------------------------------------------------- |
| `base`              | Base System                                                     |
| `linux-lts`         | Stable Kernel                                                   |
| `linux-lts-headers` | Headers and scripts for building modules for the Linux kernel   |
| `linux-firmware`    | hardware firmware                                               |
| `intel-ucode`       | microcode for intel processor                                   |
| `base-devel`        | Group of packages useful for building and compiling from source |


| network                  |                 |
| ------------------------ | --------------- |
| `networkmanager`         | network manager |
| `network-manager-applet` | nm tray         |
| `netctl`                 |                 |
| `ldns`                   |                 |


| bootloader   |                        |
| ------------ | ---------------------- |
| `grub`       |                        |
| `efibootmgr` |                        |
| `os-prober`  | Detector of Other OS's |
| `dosfstools` |                        |
| `mtools`     |                        |


| audio                 |                        |
| --------------------- | ---------------------- |
| `pipewire`            | audio and video server |
| `wireplumber`         | audio and video server |
| `pipewire-alsa`       | for audio              |
| `pipewire-audio`      | for audio              |
| `pipewire-jack`       | for audio              |
| `pipewire-pulse`      | for audio              |
| `gst-plugin-pipewire` | for audio              |
| `pavucontrol`         | audio settings gui     |
| `pamixer`             | for **waybar** audio   |


| fonts                  |             |
| ---------------------- | ----------- |
| `gnu-free-fonts`       |             |
| `noto-fonts`           |             |
| `ttf-maple-font` [AUR] |             |


| theme      |                  |
| ---------- | ---------------- |
| `nwg-look` | theming GTK apps |
| `kvantum`  | theming QT apps  |
| `qt5ct`    | theming QT5 apps |


| extra deps                    |                               |
| ----------------------------- | ----------------------------- |
| `pacman-contrib`              | for system update check       |
| `parallel`                    | for parallel processing       |
| `jq`                          | to read json                  |
| `imagemagick`                 | for image processing          |
| `brightnessctl`               | brightness control for laptop |
| `man`                         |                               |
| `man-db`                      |                               |
| `man-pages`                   |                               |


| nvidia         |                                                                  |
| -------------- | ---------------------------------------------------------------- |
| `nvidia-dkms`  | nvidia drivers (script will auto detect from lspci -k \| grep -A 2 -E "(VGA\|3D)") |
| `nvidia-utils` | nvidia utils (script will auto detect from lspci -k \| grep -A 2 -E "(VGA\|3D)")   |


openssh
keychain