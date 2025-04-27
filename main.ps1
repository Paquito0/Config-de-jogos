    If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator"))
    {Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
    Exit}
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + " (Administrator)"
    $Host.UI.RawUI.BackgroundColor = "Black"
	$Host.PrivateData.ProgressBackgroundColor = "Black"
    $Host.PrivateData.ProgressForegroundColor = "White"
    Clear-Host

    function show-menu {
	Clear-Host
	Write-Host "Atenção: suas configurações de jogo existentes serão removidas" -ForegroundColor Red
	Write-Host ""
	Write-Host "Configuraçoes de jogos"
	Write-Host ""
    Write-Host " 1. Sair"
    Write-Host " 2. CS2"
    Write-Host " 3. Delta force"

	Write-Host ""
	              }
	show-menu
    while ($true) {
    $choice = Read-Host " "
    if ($choice -match '^[1-3]$') {
    switch ($choice) {
    1 {

Clear-Host
exit

show-menu

      }
    2 {

Clear-Host
irm https://github.com/FR33THYFR33THY/Github-Game-Configs/raw/refs/heads/main/Delta%20Force/Delta%20Force.ps1 | iex
show-menu

      }
    3 {

Clear-Host
irm https://github.com/FR33THYFR33THY/Github-Game-Configs/raw/refs/heads/main/Marvel%20Rivals/Marvel%20Rivals.ps1 | iex
show-menu

      }
    } } else { Write-Host "Invalid input. Please select a valid option (1-5)." } }
