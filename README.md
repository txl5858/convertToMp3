# convertToMp3
This is a simple program that uses lame.exe intended to convert .wav to mp3 files. 

##convertMp3.ps1 script
Param($folder)
dir $folder |% {C:\convertMp3\lame\lame.exe -b 320 $_.fullname}

It was made using ps2exe (powershell to exe) so it may not run on systems with versions of powershell older than the one used to compile the .exe. 

There is .reg file included that will add the program as a Windows Explorer context item. Simply Right-click a file and select convertMp3. Mp3s should be converted in 320 kbps at a rate of 41.1 khz. 

Use this program at your own risk! I do not own the rights to lame.exe or ps2exe! 

Installation
Everything you need is in the .7z file.

1) Download the .7z file and extract to a file C:\convertMp3. If the files are not extracted to the correct location the program wont load properly.

2) double-click the .reg file to enable windows explorer context
