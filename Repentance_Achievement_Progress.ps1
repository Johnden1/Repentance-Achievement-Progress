# Johnden™
function setfile {
chcp 65001
cls
$dir = "empty"
if($dir -eq "empty") {
cd ${env:programfiles(x86)}
if(Test-Path ".\Steam\userdata\*\250900\remote") {
	cd ".\Steam\userdata\*\250900\remote"
	$dir = Get-Location
}
cd $env:programfiles
if(Test-Path ".\Steam\userdata\*\250900\remote") {
	cd ".\Steam\userdata\*\250900\remote"
	$dir = Get-Location
}
if($dir -eq "empty") {
	cls
	Write-Host "Could not find save files in Program Files" -ForegroundColor red
	pause
	exit
}
}
cd $dir
$savefile = Read-Host -Prompt "Choose a Save File [1][2][3]"
if ($savefile -lt 4 -and $savefile -gt 0) {
$bytes = Get-Content -Path "rep_persistentgamedata$savefile.dat" -Encoding Byte -Raw
copyclip
}
else { setfile }
}
function copyclip {
	
$progress = @()
For ($i=33; $i -le 669; $i++) # Achievements / Secrets
{
	$progress += $bytes[$i]
}
For ($i=2747; $i -le 3478; $i++) # Item Collection
{
	$progress += $bytes[$i]
}
$progress += $bytes[1142] # Greed Machine first byte (0-255)
$progress += $bytes[1143] # Greed Machine second byte (max is 3 for 999)

$progress += $bytes[762] # Donation Machine first byte (0-255)
$progress += $bytes[763] # Donation Machine second byte (max is 3 for 999)

$progress += $bytes[1442] # Dedication
$progress += $bytes[1450] # Marathon
$progress += $bytes[1454] # Broken Modem

$progress += $bytes[1134] # Lose Streak
$progress += $bytes[770] # Win Streak
$progress += $bytes[738] # Shell Game
Set-Clipboard $progress
cls
Write-Host "Copied to clipboard. Please paste it into the spreadsheet" -Foregroundcolor magenta
pause
exit
}
setfile
