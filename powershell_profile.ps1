# PowerShell Options
Set-PSReadlineOption -BellStyle None
# Environement Variables
$Env:PATH += ';C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Windows\Microsoft.NET\Framework\v4.0.30319;C:\Program Files\grepWin;C:\Program Files (x86)\Notepad++;C:\Program Files\Notepad++;C:\Users\willa\AppData\Local\Programs\gzdoom'
$Env:PAGER = 'less'
$Env:EDITOR = 'nvim'
$Env:VISUAL = 'nvim'
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
New-Alias -Name 'which' -Value 'where.exe' -Description 'Makes where work correctly.'
## Set Aliases
Set-Alias -Name 'wget' -Value 'C:\ProgramData\chocolatey\bin\wget.exe' -Description 'Use the real wget.' -Option AllScope
Set-Alias -Name 'man' -Value 'man-less' -Description 'Page Get-Help with less.' -Option AllScope
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
