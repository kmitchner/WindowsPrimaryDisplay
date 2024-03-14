# WindowsPrimaryDisplay
This Powershell script requires `nircmd` https://www.nirsoft.net/utils/nircmd.html

Windows 10/11 Powershell Script and shortcut to allow you to click a taskbar icon to set primary display and audio based on which monitor you clicked the shortcut.

You will have to change which audio devices you want to be assigned to each display, but the if statement is pretty straightforward.

You can create a windows shortcut to execute...

```
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass -File "./Primary.ps1"
```

...and drag it next to your Windows button in the taskbar (I gave it a monitor icon from SHELL32.dll).

If you set it up like this, the monitor you click that shortcut on will become the primary monitor.
