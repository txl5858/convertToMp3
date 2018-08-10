Param($source)

#determine source (location of .wavs) and destination (where to put the mp3s once converted)
#$source = read-host "Enter the full path to the .wav files you want to convert"
#$destBase = "C:\Users\Tim\OneDrive\Music\The Company Men"
$dest = read-host "Enter the name of the destination folder"
$destBase = (Get-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Folder\shell\convertMp3\command).destinationBase

#change to source directory and convert wavs to mp3s
cd $source
$filesToConvert = dir
$filesToConvert |% {C:\convertMp3\lame\lame.exe -b 320 $_.fullname}

#create destination directory and move mp3s
mkdir $destBase\$dest
move *.mp3 $destBase\$dest
