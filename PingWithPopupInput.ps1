	[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')  ##This statement will provide you popup to enter server name 

  $ComputerName = 'localhost'   #for default values
	$title = 'Ping Server'
	$msg   = 'Enter your Server Name:'
	$ComputerName = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)	
	do {
		(write-host "Testing connection to $ComputerName..") 
		}
	until (Test-Connection $ComputerName)
	$sound = new-Object System.Media.SoundPlayer;
	$sound.SoundLocation="c:\WINDOWS\Media\chimes.wav";
	$sound.PlayLooping();
	#Start-Sleep -s 10
	$wshell = New-Object -ComObject Wscript.Shell
	$wshell.Popup("$ComputerName is now online",0,"Online",0)
	$sound.Stop()
