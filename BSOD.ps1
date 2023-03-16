function Target-Comes {
Add-Type -AssemblyName System.Windows.Forms
$originalPOS = [System.Windows.Forms.Cursor]::Position.X
$o=New-Object -ComObject WScript.Shell

    while (1) {
        $pauseTime = 3
        if ([Windows.Forms.Cursor]::Position.X -ne $originalPOS){
            break
        }
        else {
            $o.SendKeys("{CAPSLOCK}");Start-Sleep -Seconds $pauseTime
        }
    }
}

#############################################################################################################################################

Function Set-Volume 
{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateRange(0,100)]
        [Int]
        $volume
    )

    # Calculate number of key presses. 
    $keyPresses = [Math]::Ceiling( $volume / 2 )
    
    # Create the Windows Shell object. 
    $obj = New-Object -ComObject WScript.Shell
    
    # Set volume to zero. 
    1..50 | ForEach-Object {  $obj.SendKeys( [char] 174 )  }
    
    # Set volume to specified level. 
    for( $i = 0; $i -lt $keyPresses; $i++ )
    {
        $obj.SendKeys( [char] 175 )
    }
}

#############################################################################################################################################

#WPF Library for Playing Movie and some components
Add-Type -AssemblyName PresentationFramework

Add-Type -AssemblyName System.ComponentModel
#XAML File of WPF as windows for playing movie


Target-Comes

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('LOL')
Sleep 2
Start-Process /3045986730945867309485673094856-main/3045986730945867309485673094856-main/FakeVirus.bat
Sleep 2
$wshell.SendKeys("{F11}")
Sleep 2
start "Microsoft Windows XP Shutdown - Sound Effect (HD)-[onlinevideoconverter.com].mp3"

# Turn of capslock if it is left on

$caps = [System.Windows.Forms.Control]::IsKeyLocked('CapsLock')
if ($caps -eq $true){$key = New-Object -ComObject WScript.Shell;$key.SendKeys('{CapsLock}')}
