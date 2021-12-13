# Azure Private VPN article setup scripts

##Čeština
README v češtině [zde](odkaz na cz readme)

##Description
Two scripts and an ARM template which can be used to deploy a Virtual machine in Azure cloud. The Wireguard VPN service will be then installed on the VM.

##Usage
To use these scripts open Azure cloud shell on Azure portal and open the Powershell terminal then run these commands:
`wget #link
./deployinstall.ps1`

You will be asked twice to input a password, the password is AzureWireguardVPN2021. Don't worry you will change it later.
After the setup finishes you can SSH into the server and run `sudo ./wireguard-install.sh` to add clients to the VPN.

##Credit
The wireguard install script is based on the amazing wireguard-install.sh script by [@angristan](https://github.com/angristan/wireguard-install)
