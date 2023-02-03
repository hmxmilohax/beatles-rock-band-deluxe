git pull https://github.com/hmxmilohax/beatles-rock-band-deluxe main
@echo OFF
echo:Make sure your 1.0 vanilla ark files are in _build/Xbox/gen/
del "%~dp0\_build\Xbox\gen\main_xbox.hdr"
del "%~dp0\_build\Xbox\gen\main_xbox_10.ark"
xcopy "%~dp0\_build\_rebuild_files\main_xbox.hdr" "%~dp0\_build\Xbox\gen" >nul
echo:Building Beatles Rock Band Deluxe patch arks.
echo:The "Unhandled exception" below is expected, and does not indicate failure.
"%~dp0dependencies/arkhelper" patchcreator -a "%~dp0\_ark" -o "%~dp0\_build\Xbox" "%~dp0\_build\Xbox\gen\main_xbox.hdr" >nul
echo:Wrote Beatles Rock Band Deluxe patch arks.
echo:Complete. Launching Xenia. Enjoy Beatles Rock Band Deluxe
"%~dp0\_xenia\xenia_canary" "%~dp0\_build\xbox\default.xex"
pause
