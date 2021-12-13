# Azure Private VPN article setup scripts

README v češtině [zde](odkaz na cz readme)

This project is a collection of scripts to automatically deploy a virtual machine in Azure cloud. And then install Wireguard VPN service in the VM to use as your own private VPN server. The scripts are used to make the setup as easy as possible.

### Usage
To use these scripts open Azure cloud shell on Azure portal
![Azure Portal cloud shell button location](./az-cloushell.png)
Open the Powershell terminal and run these commands:

`wget #link`

`./deployinstall.ps1`

You will be asked twice to input a password, the password is AzureWireguardVPN2021. Don't worry you will change it later.
After the setup finishes you can SSH into the server and run `sudo ./wireguard-install.sh` to add clients to the VPN.

## Credit
The wireguard install script is based on the amazing wireguard-install.sh script by [@angristan](https://github.com/angristan/wireguard-install)
