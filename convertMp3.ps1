Param($folder)
dir $folder |% {C:\convertMp3\lame\lame.exe -b 320 $_.fullname}