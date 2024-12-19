@echo off
color 1f
title Check Health

sfc /scannow
echo.

choice /m "Would you like to Check Health?"
if %errorlevel%==2 goto End
Dism /Online /Cleanup-Image /CheckHealth
echo.

choice /m "Would you like to Scan Health?"
if %errorlevel%==2 goto End
Dism /Online /Cleanup-Image /ScanHealth
echo.

choice /m "Would you like to Restore Health?"
if %errorlevel%==2 goto End
Dism /Online /Cleanup-Image /RestoreHealth

:End
echo.
echo Have a good day!
echo.
pause
exit