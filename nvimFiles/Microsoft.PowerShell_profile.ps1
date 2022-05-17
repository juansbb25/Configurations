Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons

# Use this file to run your own startup commands
set-Location E:/JUAN/AppsTrabajo


function Open-nvim-config {
	nvim C:/Users/juans/.vimrc
}
Set-Alias nvimconfig Open-nvim-config
function Open-BTerminal {
    param(
        [string]$Path
    )
PROCESS{
    cd $Path
    wt -d .\ -p "Windows PowerShell"`; split-pane -d .\ -H -s .13 -p "Windows PowerShell"`; mf up
}
}
Set-Alias ide Open-BTerminal
function goToPersonalProgramming {
    cd E:/JUAN/AppsPersonales
}
Set-Alias pp: goToPersonalProgramming

function goToWorkProgramming {
    cd E:/JUAN/AppsTrabajo
}
Set-Alias ww: goToWorkProgramming

function newLs {
    Get-ChildItem | Format-Wide -Column 2
}

Set-Alias ls newLs -Option AllScope -Scope Global -ErrorAction SilentlyContinue -Force

function oldLs {
    Get-ChildItem
}

Set-Alias ls: oldLs

function goToVimConfigurationFile {
    cd C:\Users\juans\AppData\Local\nvim\
}

function Set-Title {
    param(
        [string]
        $title
    )
    $Host.UI.RawUI.WindowTitle = $title  
}

Set-Alias nvim: goToVimConfigurationFile
Set-Alias ld Get-ChildItem | Format-Wide
## Prompt Customization
Set-PoshPrompt -Theme agnosterplus
clear
