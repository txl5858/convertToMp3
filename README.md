# convertMp3
This is a simple program that uses lame.exe to convert .wav to mp3 files.

There is a project called Powershell Audio which accomplishes this and other features much better.
https://wiki.hydrogenaud.io/index.php?title=PowerShell_Audio

The exe is just running a powershell program running lame.exe. The ps1 file is included for reference. The exe was made using ps2exe (powershell to exe) so it may not run on systems with versions of powershell older than the one used to compile the .exe (powershell version 5 windows 10).
https://gallery.technet.microsoft.com/scriptcenter/PS2EXE-GUI-Convert-e7cb69d5

There is .reg file included which will add the program as a Windows Explorer context item. This allows you to simply Right-click a folder and select convertMp3. The program will go through the folder you selected and convert all .wav files to mp3s. Mp3s should be converted in 320 kbps at a rate of 41.1 khz.

Note - Windows Updates may cause the context menu to go away since core Windows Explorer reg keys are being modified. If that happens just reload the .reg file.

Use this program at your own risk! I do not own the rights to lame.exe or ps2exe! 

# Installation:

Everything you need is in the .zip file.

Pre-req: Make sure you enable the execution of powershell scripts on your machine. Open Powershell as Administrator and run the command: 
Set-ExecutionPolicy Unrestricted

1) Download the .zip file and extract to a file C:\convertMp3. If the files are not extracted to the correct location the program wont load properly.

2) Edit the .reg file with the file location where you wish to save the .mp3 files.
"destinationBase"="C:\\Users\\Tim\\OneDrive\\Music\\The Company Men"

3) Double-click the .reg file to enable Windows Explorer context and destination location

4) Open Windows Explorer, browse to a folder of .wavs, right-click the folder and select convertToMP3.

5) The script will prompt you for a destination folder name which it will create in the directory specified in step #2.

6) Let the script run
