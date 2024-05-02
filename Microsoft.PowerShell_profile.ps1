oh-my-posh init pwsh --config $env:POSH_THEMES_PATH\catppuccin_macchiato.omp.json| Invoke-Expression
#Invoke-Expression (&starship init powershell)

Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView

Import-Module Terminal-Icons


#34de4b3d-13a8-4540-b76d-b9e8d3851756 PowerToys CommandNotFound module

Import-Module "C:\Users\yvesg\AppData\Local\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"
#34de4b3d-13a8-4540-b76d-b9e8d3851756

Invoke-Expression (& { (zoxide init powershell | Out-String) })
Remove-Alias "ls"
Set-Alias -Name "ll" -Value 'ls'
Remove-Alias "cd"
Set-Alias -Name "cd" -Value 'z'

function ls {
    $params=@()
    $params += " --color=auto --icons=always"
    $args | ForEach-Object {
         $params += $_ + " "
    }
    Invoke-Expression "eza $params"
} 
