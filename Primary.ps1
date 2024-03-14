Add-Type -AssemblyName System.Windows.Forms
$cursorPosition = [System.Windows.Forms.Cursor]::Position
$monitors = [System.Windows.Forms.Screen]::AllScreens

$disp = "DISPLAY1"
$lastX = -99999

foreach ($monitor in $monitors) {
    if ($monitor.WorkingArea.X -gt $lastX) {
        if ($cursorPosition.X -gt $monitor.WorkingArea.X) {
            $disp = $monitor.DeviceName
            $lastX = $monitor.WorkingAreaX
        }
    }
}

if($disp -eq "\\.\DISPLAY3") {
    Start-Process ".\nircmd.exe" -ArgumentList "setdefaultsounddevice", "SONY"
} elseif($disp -eq "\\.\DISPLAY2") {
    Start-Process ".\nircmd.exe" -ArgumentList "setdefaultsounddevice", "Headset"
} else {
    Start-Process ".\nircmd.exe" -ArgumentList "setdefaultsounddevice", "Samsung"
}
Start-Process ".\nircmd.exe" -ArgumentList "setprimarydisplay", $disp

##########
# DEBUG
##########
#echo $disp
#Start-Sleep -Seconds 20
