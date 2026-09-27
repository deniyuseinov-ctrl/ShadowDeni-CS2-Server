@echo off
setlocal

echo =====================================
echo     ShadowDeni CS2 Server Update
echo =====================================

if not exist "C:\CS2Server\server-files" (
    echo ERROR: GitHub files folder not found.
    echo Expected: C:\CS2Server\server-files
    pause
    exit /b 1
)

cd /d C:\CS2Server\server-files

echo.
echo [1/2] Updating GitHub files...
git pull

echo.
echo [2/2] Copying configuration...

if exist "cfg" (
    xcopy "cfg\*" "C:\CS2Server\game\csgo\cfg\" /E /I /Y
)

echo.
echo =====================================
echo          UPDATE COMPLETE
echo =====================================
pause
