### Článek Azure Private VPN setup skripty

README in english [here](README.md)

Tento projekt je kolekce skriptů k automatickému nasazení virtuálního přistroje v Azure cloudu. Poté instalace služby Wireguard VPN do virtuálního přístroje, k použití jako vlastní privátní VPN server. Skripty jsou pro co nejjednodušší nastavení a instalaci.

### Použití

K užití těcho scriptů otevřete Cloud shell na Azure portálu:
![Lokace cloud shell tlačítka na Azure portálu](az-cloudshell.png)

Otevřete Powershellový terminál a spusťte tyto příkazy:
`wget #link`
`./deployinstall.ps1`

Dvakrát se vás to zeptá na zadání hesla. Heslo e AzureWireguardVPN2021. Nebojte změníte si ho později. Až se instalace dokončí budete se moct pomcí SSH připojit na server a spustit příkaz `sudo ./wireguard-install.sh` k přidání klientů VPN.

## Credit
Wireguard install skript je založen na vynikajícím wireguard-install.sh skriptu od [@angristan](https://github.com/angristan/wireguard-install)
