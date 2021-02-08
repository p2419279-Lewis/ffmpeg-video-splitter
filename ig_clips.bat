@ECHO OFF
echo %~1
set /p id="Enter Folder Name:"
if not exist "%CD%\%id%" mkdir "%CD%\%id%"
ffmpeg -i "%~1" -c copy -map 0 -segment_time 00:00:56 -reset_timestamps 1 -f segment "%id%\%%03d.mp4"