git pull https://github.com/hmxmilohax/beatles-rock-band-deluxe main
@echo OFF
echo:Make sure your 1.0 vanilla ark files are in _build/ps3/USRDIR/gen/
del "%~dp0\_build\ps3\USRDIR\gen\main_ps3.hdr"
del "%~dp0\_build\ps3\USRDIR\gen\main_ps3_10.ark"
xcopy "%~dp0\_build\_rebuild_files\main_ps3.hdr" "%~dp0\_build\ps3\USRDIR\gen" >nul
echo:Building Beatles Rock Band Deluxe patch arks.
echo:The "Unhandled exception" below is expected, and does not indicate failure.
"%~dp0dependencies/arkhelper" patchcreator -a "%~dp0\_ark" -o "%~dp0\_build\ps3\USRDIR" "%~dp0\_build\ps3\USRDIR\gen\main_ps3.hdr" >nul
echo:Wrote Beatles Rock Band Deluxe patch arks.
echo:Complete. Enjoy Beatles Rock Band Deluxe
pause
