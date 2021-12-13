New-AzResourceGroup -Name "VPN-rg" -Location "West Europe"
wget "https://git.io/JDBfY"
New-AzResourceGroupDeployment  -ResourceGroupName "VPN-rg" -TemplateFile './template.json'

$publicip = (Get-AzureRmPublicIpAddress -Name VPN-vm-ip).IpAddress 
Set-Content -Path 'pubip.txt' -Value $publicip
scp "./pubip.txt" azurevpnvm@${publicip}:/home/azurevpnvm/
ssh azurevpnvm@$publicip '
wget "https://git.io/JDBfW"
chmod +x wireguard-install.sh
./wireguard-install.sh
sudo passwd
'
