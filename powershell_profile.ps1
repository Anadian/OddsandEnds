Set-PSReadlineOption -BellStyle None
$Env:PATH += ';C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Windows\Microsoft.NET\Framework\v4.0.30319;C:\Program Files\grepWin;C:\Program Files\Notepad++'
Function choco-plus{ choco $args -dy }
New-Alias -Name 'which' -Value 'where.exe' -Description 'Makes where work correctly.'
#Function arg-test{ $args[0]; $args[1]; $args; $args[2..($args.Length - 1)];}
Function ln{ New-Item -ItemType HardLink -Path $args[0] -Value $args[1] $args[2..($args.Length - 1)] }