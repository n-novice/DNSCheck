while ($true){
    $tmp = Resolve-DnsName -Name www.goo.ne.jp   | ft -HideTableHeaders | Out-String -Stream | ?{$_ -ne ""}  
    $date = Get-Date -Format "MM/dd/yyyy HH:mm:ss" #Format the Date
    "$date : $tmp" |  Out-File result.txt -Append
    Start-Sleep -Seconds 10
}

