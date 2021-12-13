New-AzResourceGroup -Name "VPN-rg" -Location "West Europe"
wget "https://gist.githubusercontent.com/Drochec/6927a8f1caefdb09d57a77f74bbdb287/raw/8933d840179e78a09530ddbecb36d51b9f8bd683/template.json"
New-AzResourceGroupDeployment  -ResourceGroupName "VPN-rg" -TemplateFile './template.json'

$publicip = (Get-AzureRmPublicIpAddress -Name VPN-vm-ip).IpAddress 
Set-Content -Path 'pubip.txt' -Value $publicip
scp "./pubip.txt" azurevpnvm@${publicip}:/home/azurevpnvm/
ssh azurevpnvm@$publicip '
wget "https://gist.githubusercontent.com/Drochec/6927a8f1caefdb09d57a77f74bbdb287/raw/32ba3a250735baf1aa62711f8aeb95f9f229840e/wireguard-install.sh"
chmod +x wireguard-install.sh
./wireguard-install.sh
'