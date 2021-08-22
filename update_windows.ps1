#$data_inicio = (Get-Date -Format "dddd MM/dd/yyyy HH:mm")
#$data_teste = "01:30"
#Write-Output $data_inicio
#Write-Output $data_teste

Install-Module PSWindowsUpdate

get-date -Format "MM/dd/yyyy HH:mm"
$data_execucao = Read-Host -Prompt "Informe a Data conforme exemplo acima:"

while ($data_inicio = (get-date -Format "MM/dd/yyyy HH:mm") -ne $data_execucao) {

Write-Output "aguardando"
get-date -Format "MM/dd/yyyy HH:mm"
sleep(30)

}

Write-Output "Atualizando"
Get-WindowsUpdate -Install -AcceptAll -KBArticleID KB2267602 -AutoReboot

Restart-Computer



 