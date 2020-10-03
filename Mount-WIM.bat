@echo off
cls

set /p WIM="Path to WIM file: "
echo.

set /p MOUNT="Path to mount directory: "
echo.

dism /Mount-Image /ImageFile:%WIM% /index:1 /MountDir:%MOUNT%
echo.

PAUSE
echo.

Dism /Unmount-Image /MountDir:%MOUNT% /commit
echo.

PAUSE
EXIT