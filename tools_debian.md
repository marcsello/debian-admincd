# Debian AdminCD tools

This is just an excerpt of the extra packages included in Debian AdminCD. For the full list check out the files in the [config/package-lists](config/package-lists/) folder.

## Booting

Tools to manage system booting

- **efibootmgr**: Interact with the EFI Boot Manager
- **grub2**: GRand Unified Bootloader, version 2 (dummy package)

## Convenience

Tools to make using Debian Live CD more pleasant

- **tmux**: terminal multiplexer
- **screen**: terminal multiplexer with VT100/ANSI terminal emulation
- **minicom**: Friendly menu driven serial communication program
- **findutils**: utilities for finding files--find, xargs
- **less**: pager program similar to more
- **tree**: displays an indented directory tree, in color
- **tio**: simple TTY terminal I/O application

## Debian

Debian specific tools

- **debootstrap**: Bootstrap a basic Debian system
- **debian-archive-keyring**: OpenPGP archive certificates of the Debian archive

## Disk

Tools to manage disks

- **hdparm**: tune hard disk parameters for high performance
- **smartmontools**: control and monitor storage systems using S.M.A.R.T.
- **sdparm**: Output and modify SCSI device parameters
- **sg3-utils**: utilities for devices using the SCSI command set
- **cciss-vol-status**: HP SmartArray RAID Volume Status Checker
- **mtx**: controls autoloaders and tape libraries
- **gddrescue**: GNU data recovery tool

## Blockdevices / Partitions / Filesystems

Tools to manage everything between the physical disks and the filesystems

- **lvm2**: Linux Logical Volume Manager
- **mdadm**: tool for managing Linux MD devices (software RAID)
- **dosfstools**: utilities for making and checking MS-DOS FAT filesystems
- **ntfs-3g**: read/write NTFS driver for FUSE
- **parted**: disk partition manipulator
- **fstransform**: Tool for in-place filesystem conversion
- **cryptsetup**: disk encryption support - startup scripts
- **f2fs-tools**: Tools for Flash-Friendly File System

## Hardware

Hardware management tools

- **usbutils**: Linux USB utilities
- **pciutils**: PCI utilities
- **lshw**: information about hardware configuration
- **dmidecode**: SMBIOS/DMI table decoder
- **flashrom**: Identify, read, write, erase, and verify BIOS/ROM/flash chips
- **setserial**: controls configuration of serial ports

## Misc

Tools that you might need

- **htop**: interactive processes viewer
- **bzip2**: high-quality block-sorting file compressor - utilities
- **pbzip2**: parallel bzip2 implementation
- **gnupg**: GNU privacy guard - a free PGP replacement
- **file**: Recognize the type of data in a file using "magic" numbers
- **pwgen**: Automatic Password generation
- **python3**: interactive high-level object-oriented language (default python3 version)

## Networking

Networking tools

- **traceroute**: Traces the route taken by packets over an IPv4/IPv6 network
- **ethtool**: display or change Ethernet device settings
- **whois**: intelligent WHOIS client
- **bind9-dnsutils**: Clients provided with BIND 9
- **iperf3**: Internet Protocol bandwidth measuring tool
- **arping**: sends IP and/or ARP pings (to the MAC address)
- **ifstat**: InterFace STATistics Monitoring
- **netcat-openbsd**: TCP/IP swiss army knife
- **telnet**: transitional dummy package for inetutils-telnet default switch
- **openssh-client**: secure shell (SSH) client, for secure access to remote machines
- **wget**: retrieves files from the web
- **curl**: command line tool for transferring data with URL syntax
- **ca-certificates**: Common CA certificates
- **rsync**: fast, versatile, remote (and local) file-copying tool
- **git**: fast, scalable, distributed revision control system

## Windows

Tools to rescue or inspect windows systems

- **libhivex-bin**: utilities for reading and writing Windows Registry hives
