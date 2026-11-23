@echo off
setlocal

set "ROOT=%~dp0"
set "CODE=%ROOT%code"
set "JDK17=C:\Program Files\Eclipse Adoptium\jdk-17.0.19.10-hotspot"
set "JAVAC=%JDK17%\bin\javac.exe"
set "JAR=%JDK17%\bin\jar.exe"
set "JPACKAGE=%JDK17%\bin\jpackage.exe"

if not exist "%JAVAC%" (
    echo JDK 17 was not found at "%JDK17%"
    echo Install Eclipse Temurin JDK 17 or update JDK17 in this script.
    exit /b 1
)

cd /d "%ROOT%"
if exist build rmdir /s /q build
if exist dist rmdir /s /q dist
mkdir build\classes
mkdir build\classes\fonts
mkdir build\classes\images
mkdir build\input
mkdir dist

"%JAVAC%" -encoding UTF-8 -d build\classes "%CODE%\PacManGame.java"
if errorlevel 1 exit /b 1

copy "%CODE%\fonts\*.ttf" build\classes\fonts\
copy "%CODE%\images\*.*" build\classes\images\
cd /d "%ROOT%build\classes"
"%JAR%" --create --file "%ROOT%build\input\PacMan.jar" -C . .
cd /d "%ROOT%"

python -c "from PIL import Image; Image.open(r'%CODE%\images\icon1.png').convert('RGBA').save(r'%ROOT%build\PacMan.ico', format='ICO', sizes=[(256,256),(128,128),(64,64),(48,48),(32,32),(16,16)])"
if errorlevel 1 exit /b 1

"%JPACKAGE%" --type app-image ^
  --name "PacMan" ^
  --app-version "3.5" ^
  --icon "%ROOT%build\PacMan.ico" ^
  --input "%ROOT%build\input" ^
  --main-jar PacMan.jar ^
  --main-class PacManGame ^
  --dest "%ROOT%dist"
if errorlevel 1 exit /b 1

echo.
echo Pac-Man executable created at:
echo %ROOT%dist\PacMan\PacMan.exe
exit /b 0
