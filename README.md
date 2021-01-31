# Debian Admin CD
It's like Gentoo Admin CD but it's Debian

## What's this?
This is a simple console-only live system based off [Debian](https://www.debian.org), aimed for administrators to perform various tasks. Inspired by [Gentoo Admin CD](https://bugs.gentoo.org/352152).

Built using standard [Debian Live](https://www.debian.org/devel/debian-live/) tools.

Essentially this is a simple live image, with a selection of administration tools preinstalled. This image can be used to rescue your system, debug hardware issues, or even install Debian with `debootstrap`, from a more friendly interface than Debian installer's rescue mode.

With the included Live SSH Setup tool, Debian Admin CD can be used to bootstrap a managed node with [Ansible](https://www.ansible.com/)! Read more [here](tools.md).

## Tools

Originally, Debian Admin CD was just a basic Debian live CD with a lot of preinstalled packages. But as time went on, a few home-grown tools and scripts were added to make Debian Admin CD suitable for even more tasks!

Tools currently included:
 - **Live SSH setup** Preconfigure an SSH server even from the kernel commandline (Useful for PXE booting)


Detailed description about the included tools/scripts can be found [here](tools.md).

## Building Debian Admin CD
Building Debian Admin CD is easy as pie! 

All you have to do, is install live-build on your Debian based system (in theory it should work on Ubuntu):
```
# apt install live-build
```

After this clone the repository, cd into it, and issue `lb build`:

```
$ git clone https://github.com/marcsello/debian-admincd
$ cd debian-admincd
# lb build
```

After that, if everything went okay, you should find the admincd image named `live-image-amd64.hybrid.iso` in that folder.

## Prebuilt binaries

Functional `iso` files can be downloaded here:  
https://github.com/marcsello/debian-admincd/releases

Burn it on a CD, `dd` it on a usb stick, whatever works for you.

At the moment, I don't really know how to how could I set this up to automagically build, but I'm working on it.

## Design choices

### AMD64 build only

I don't think, that there is any reason to support other platforms. 

`i386` is very-very outdated. I understand if anyone would need a rescue CD for them, since I'm a big fan of old computers as well, but it just does not worth the effort. If you really need such a thing, you can modify the code, and build one for youself, it should not be hard.

`alpha` and `sparc` are kinda the same thing.

For `arm` and similar platforms... well... I don't feel like the need to support that as well... Maybe I'm just lazy.

`ppc`/`ppc64`/`ppc64le` supporting those platforms would be actually really cool. But it's kinda the same as for `arm`.

### Hybrid ISO

The reason for building Hybrid ISO is simple. It can be booted from almost any media. Both USB and CD. (Altrought I don't think anyone still uses CDs for anything).

You can also easily setup PXE boot, since all files could be found in the `binary` folder after build.

### Root user only

Well, for the purpose of this image is to do administration tasks. So you would be issuing commands that require root anyway. A regular user account would only get in your way.

I also don't want to include any passwords in the image, and because of that a passwordless `sudo` wouldn't be any more secure than just logging in with root.

Also, the Gentoo Admin CD does it the same way.

### Package selection

Package selection is really just a matter of my taste. And also a matter of change. Packages come and go, with good reasoning any package can be included or excluded.

Also if you need something you can always use `apt` on the live system, to install the right tool on the fly.
