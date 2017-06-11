# convertMp3
This is a simple program that uses lame.exe intended to convert .wav to mp3 files. The exe is just running a powershell program running lame.exe. The ps1 file is included for reference but you dont need it.

It was made using ps2exe (powershell to exe) so it may not run on systems with versions of powershell older than the one used to compile the .exe. 

There is .reg file included that will add the program as a Windows Explorer context item. Simply Right-click a file and select convertMp3. Mp3s should be converted in 320 kbps at a rate of 41.1 khz. 

Use this program at your own risk! I do not own the rights to lame.exe or ps2exe! 

Installation
Everything you need is in the .7z file.

Make sure you enable the execution of powershell scripts on your machine. Open Powershell as Administrator and run the command: 
Set-ExecutionPolicy Unrestricted

As of June 11th 2017 the script is running with errors. It seems totally benine and everything still works as expected. Do not ctrl+c the script or .mp3 files may be incomplete.

1) Download the .7z file and extract to a file C:\convertMp3. If the files are not extracted to the correct location the program wont load properly.

2) double-click the .reg file to enable windows explorer context
