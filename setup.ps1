# Install Scoop
#Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

#Install Scoop apps
foreach ($app in Get-Content .\scoopApps.txt) {
    & 'scoop' 'install' $app
}

#Install AppGet apps
foreach($app in Get-Content .\appGetApps.txt) {
    & 'appget' 'install' $app '-s'
}