#prompt 
oh-my-posh init pwsh --config "$HOME\.config\powershell\khen-theme\khen_themes.omp.json" | Invoke-Expression

# run all file scripts folder
Get-ChildItem "$HOME\.config\powershell\scripts" | ForEach-Object {. $_.FullName}

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
