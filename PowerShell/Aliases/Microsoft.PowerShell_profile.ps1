# [Console]::CursorSize = 1
$HOST.UI.RawUI.CursorSize = 1
Set-Alias c Clear-Host
Set-Alias l Get-ChildItem
Set-Alias l color-ls
function scp
{
    C:\Marslo\MyProgramFiles\Git\bin\scp.exe -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i "C:\Marslo\MarsloVeritas\Box Sync\Tools\Software\System\RemoteConnection\AuthorizedKeys\Marslo@Appliance"
}
function la
{
    $currentpath = Get-Location
    Get-ChildItem $currentpath -force
}
function l.
{
    # Get-ChildItem . -Force | Where-Object { $_.Attributes -like "*Hidden*" } | Select FullName
    Get-ChildItem . -Force | Where-Object { $_.Attributes -like "*Hidden*" }
}
function t.
{
    Get-ChildItem . -Recurse -Force | Where { ($_.Attributes.ToString() -Split ", ") -Contains "Hidden" } | Select FullName
}
function tree
{
    $currentpath = Get-Location
    Get-ChildItem $currentpath -recurse
}
function ..
{
    Set-Location ..
}
function ...
{
    Set-Location ..\..
}
function ats
{
    Set-Location "C:\Marslo\Job\Codes"
}
function lno
{
    Set-Location "C:\Marslo\Job\Codes\LotusNotesOpt"
}
function desk
{
    Set-Location "C:\Users\Marslo_Jiao\Desktop"
}
function myprog
{
    Set-Location "C:\Marslo\MyProgramFiles"
}
function prog
{
    Set-Location "C:\Program Files (x86)"
}
function cdbox
{
    Set-Location "C:\Marslo\MarsloVeritas\Box Sync"
}
function mj
{
    Set-Location "C:\Marslo\Study\My\My_Scripts\Java"
}
function cdgi
{
    Set-Location "C:\Marslo\Tools\Git"
}
function gr
{
    Set-Location C:\
}
function up
{
    Set-Location "C:\Users\Marslo_Jiao"
}
function exp
{
    explorer .
}
function openit
{
    param(
            $p
        )
    if(Test-Path $p){
        # Write-Output $p
        explorer.exe $p
    } else{
            "Could not find the $p"
    }
}
function msl
{
    Set-Location "C:\Marslo\MarsloVeritas\Code\Perforce\appliance\poc\marslo"
}
function rel
{
    Set-Location "C:\Marslo\MarsloVeritas\Code\Perforce\appliance\releng\main"
}
function alias
{
   Get-Content "C:\Users\Marslo_Jiao\Documents\WindowsPowerShell\aliases_Marslo.txt"
}
function wp
{
    Set-Location "C:\Users\Marslo_Jiao\Documents\WindowsPowerShell"
}
function nba
{
    Set-Location "C:\Marslo\MarsloVeritas\Code\Perforce\appliance\nba\main"
}

function color-ls {
  $regex_opts = ([System.Text.RegularExpressions.RegexOptions]::IgnoreCase -bor [System.Text.RegularExpressions.RegexOptions]::Compiled)

  $fore = $Host.UI.RawUI.ForegroundColor
  $compressed = New-Object System.Text.RegularExpressions.Regex('\.(zip|tar|gz|rar)$', $regex_opts)
  $executable = New-Object System.Text.RegularExpressions.Regex('\.(exe|bat|cmd|ps1|psm1|vbs|rb|reg|dll|o|lib)$', $regex_opts)
  $executable = New-Object System.Text.RegularExpressions.Regex('\.(exe|bat|cmd|ps1|psm1|vbs|rb|reg|dll|o|lib)$', $regex_opts)
  $source = New-Object System.Text.RegularExpressions.Regex('\.(py|pl|cs|rb|h|cpp)$', $regex_opts)
  $text = New-Object System.Text.RegularExpressions.Regex('\.(txt|cfg|conf|ini|csv|log|xml)$', $regex_opts)

  Invoke-Expression ("Get-ChildItem $args") |
    %{
      if ($_.GetType().Name -eq 'DirectoryInfo') {
        $Host.UI.RawUI.ForegroundColor = 'Green'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($compressed.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'Red'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($executable.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'Yellow'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($text.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'Cyan'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } elseif ($source.IsMatch($_.Name)) {
        $Host.UI.RawUI.ForegroundColor = 'DarkGreen'
        $_
        $Host.UI.RawUI.ForegroundColor = $fore
      } else {
        $_
      }
    }
}

function prompt
{
    $dgray = [ConsoleColor]::DarkGray
    $red = [ConsoleColor]::Red

    # Set Window Title
    $host.UI.RawUI.WindowTitle = "$ENV:USERNAME@$ENV:COMPUTERNAME - $(Get-Location)"

    # Set Prompt
    Write-Host " " -ForegroundColor $dgray

    # Show providername if you are outside FileSystem
    # Inspired from http://www.snowland.se/2010/02/23/nice-powershell-prompt
    if ($pwd.Provider.Name -ne "FileSystem") {
      Write-Host "[" -nonewline -foregroundcolor $dgray
      Write-Host $pwd.Provider.Name -nonewline -foregroundcolor $dgray
      Write-Host "] " -nonewline -foregroundcolor $dgray
    }

    # Write-Host (Get-Date -Format G) -NoNewline -ForegroundColor $red
    # Write-Host (Get-Date -UFormat "%Y/%m/%d") -NoNewline -ForegroundColor $red
    Write-Host "[" -NoNewline -ForegroundColor $dgray
    Write-Host (Get-Date -UFormat "%r ") -NoNewline -ForegroundColor $dgray
    Write-Host $(get-location) -NoNewline -ForegroundColor $red
    Write-Host "] " -ForegroundColor $dgray

    # Check for Administrator elevation
    $wid=[System.Security.Principal.WindowsIdentity]::GetCurrent()
    $prp=new-object System.Security.Principal.WindowsPrincipal($wid)
    $adm=[System.Security.Principal.WindowsBuiltInRole]::Administrator
    $IsAdmin=$prp.IsInRole($adm)
    if ($IsAdmin) {
        Write-Host "#" -NoNewline -ForegroundColor $dgray
        return " "
    }
    else {
        Write-Host "$" -NoNewline -ForegroundColor $dgray
        return " "
    }
 }

# functio mgp
# {
    # param(
            # $strs
        # )
    # "C:/Marslo/Tools/Softwares/Programming/Ruby/Devkit/bin/grep.exe" $strs . | "C:/Marslo/Tools/Softwares/Programming/Ruby/Devkit/bin/grep.exe" -v '\.svn\|\.git\|tags'
# }

# --- Shortcuts ---
# begin
# {
  # $WshShell = New-Object -ComObject WScript.Shell;
# }
# process
# {
  # $WshShell.CreateShortcut($_)
# }

