# PowerShell constants
if( $IsWindows -eq $true -or ( $IsLinux -ne $true -and $IsMacos -ne $true ) ){
	$global:IsActuallyWindows = $true;
} else{
	$global:IsActuallyWindows = $false;
}
# PowerShell Options
Set-PSReadlineOption -BellStyle None
# Environement Variables
if( $global:IsActuallyWindows -eq $true ){
	#$Env:PATH += ';C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Windows\Microsoft.NET\Framework\v4.0.30319;C:\Program Files\grepWin;C:\Program Files (x86)\Notepad++;C:\Program Files\Notepad++;C:\Users\willa\AppData\Local\Programs\gzdoom'
}

$Env:PAGER = 'less'
$Env:EDITOR = 'nvim'
$Env:VISUAL = 'nvim'
$Env:GOPATH = "$HOME\dev\go"
$Env:GITHUB_USERNAME = 'Anadian';
$Env:HOMEBIN = "$HOME\.local\bin";
$Env:COREPACK_ENABLE_AUTO_PIN = 0;
$Env:COREPACK_ENABLE_PROJECT_SPEC = 0;
$Env:SSH_D7k = 'cameron@192.168.0.101:22'
$Env:SSH_SGS8 = 'u0_a394@192.168.0.46:8022'
$Env:SSH_A15 = 'willa@192.168.0.41:22'
git config --global user.name $Env:GITHUB_USERNAME;
git config --global user.email 'willanad@yandex.com';
git config --global init.defaultBranch 'main';
git config --global alias.b branch
git config --global alias.ck checkout
git config --global alias.m merge
git config --global alias.aa 'add --all'
git config --global alias.a add
git config --global alias.co commit
git config --global alias.cl clone
git config --global alias.pom 'pull origin main'
git config --global alias.pow 'pull origin wip'
git config --global alias.unstage 'reset HEAD ---'
git config --global alias.last 'log -l HEAD'
git config --global alias.cg 'config --global'
git config --global alias.change '!git add --all . && git commit -m '
# Functions
#Function arg-test{ $args[0]; $args[1]; $args; $args[2..($args.Length - 1)];}
Function choco-plus{ choco $args -dy }
Function ln{ New-Item -ItemType HardLink -Path $args[0] -Value $args[1] $args[2..($args.Length - 1)] }
Function diff-plus{ Compare-Object -ReferenceObject $(Get-Content $args[0]) -DifferenceObject $(Get-Content $args[1]) -CaseSensitive -IncludeEqual }
Function man-less{ Get-Help $args[0] -detailed | less }
# Aliases
## New Aliases
New-Alias -Name 'more' -Value 'less' -Description 'Use Unix-style less instead of MS-Style more.'
New-Alias -Name 'vim' -Value 'nvim' -Description 'Uses NVIM.'
if( $global:IsActuallyWindows -eq $true ){
	New-Alias -Name 'which' -Value 'where.exe' -Description 'Makes where work correctly.'
}
## Set Aliases
if( $global:IsActuallyWindows -eq $true ){
	Set-Alias -Name 'wget' -Value 'C:\ProgramData\chocolatey\bin\wget.exe' -Description 'Use the real wget.' -Option AllScope
	Set-Alias -Name 'man' -Value 'man-less' -Description 'Page Get-Help with less.' -Option AllScope
}
## Remove Aliases
if( $global:IsActuallyWindows -eq $false ){
	Remove-Alias -Name 'pwd'
}
if( $global:IsActuallyWindows -eq $true ){
# Chocolatey profile
	$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
	if (Test-Path($ChocolateyProfile)) {
	Import-Module "$ChocolateyProfile"
	}
}
