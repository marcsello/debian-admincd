# Debian Admin CD Tools
Tools developed by the Debian Admin CD project

## Setup Live SSH Server
The Debian Admin CD includes a setup script that helps setting up an SSH server on the live system.

The packages required to install a OpenSSH server are built into the live image, and are being installed during boot. 
This ensure that the server can be installed without internet access. And it won't be there if it's not needed.

### Setup the SSH server

The Live SSH server can be set up in two ways: 
 - Kernel cmdline parameters (Useful for PXE booting).
 - Manually using the `setup-live-ssh-server` command after the system booted.


#### Kernel cmdline parameters

The following parameters can be provided to the kernel commandline to configure the SSH server:

```
withssh              Enable Live SSH server with default settings
withssh.nopw         Do not configure root password (Same as -P)
withssh.pw=PASSWORD  Use PASSWORD instead of a generated one (Same as -p)  
withssh.key=URL      Download and install SSH public key from URL (Same as -k)
```


More than one parameters can be used at the same time.
If none of the parameters above supplied, the ssh server won't be installed and configured during boot time.

#### Command line parameters

The follwoings are the output of the `setup-live-ssh-server --help` command:

```
-q              Do not print connection details when the script finishes
-m              Do not append connection details to /etc/motd
-k URL          Download and install SSH public key from URL
-p PASSOWRD     Use PASSWORD instead of a generated one
-P              Do not configure root password (login only via key)
-S              Do not start/restart the systemd service (have to restart manually)
-h/--help       This help
```
