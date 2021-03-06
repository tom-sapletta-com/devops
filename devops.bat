@ECHO OFF &SETLOCAL
::echo %HOMEPATH%\path.txt
::setlocal enableextensions enabledelayedexpansion
::set devops_path=%cd%\devops
::for /f "delims=" %%i in (%HOMEPATH%\path.txt) do (
::    set devops_path=%%i
::)
::endlocal

:: Init
IF "%DEVOPSPATH%"=="" (
SET DEVOPSPATH=%cd%
setx path "%path%;%DEVOPSPATH%"
call doskey do=%DEVOPSPATH%"\devops.bat" $*
)



more %DEVOPSPATH%\doc\logo\soft.txt
echo DevOps Project Tool
echo.

:: set default path

:: change Color
:: COLOR [background][foreground]
::call color 02
::call color 0A
::call color 1F
call color 0A

:: LOGS
set log_file=%DEVOPSPATH%\log\command.txt
set log_time=%time% < nul
set log_content=do %1 %2 %3
echo %log_time% %log_content% >> %log_file%

:: Detect system
SET /a count=5
for %%a in (%*) do (
    IF NOT %%a==google call set "qu=%%qu%%+%%a"
)
::ECHO %Myvar:~2%


:: Start script from dedicated system

:: Check PARAM

:: IF %1.==. GOTO No1
:: IF %2.==. GOTO No2
:: ... do stuff...
:: GOTO End1

:: setlocal enabledelayedexpansion
::set qu=
::for %%i in (%*) do (
::    set qu=%qu%+%%i
::)

::for %%I IN (%*) DO set qu=%qu% %%I
:: ECHO !qu!
set os=windows
::set "app="
set app=%2
::set "command="
set command=%1
set query=%3
set params=%3 %4 %5
set user_home_path=%USERPROFILE%
set user_path=%homepath%
set user_name=%homepath%
set os_partition=%systemdrive%
set os_path=%systemdrive%%homepath%


for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))
IF %v%==10.0 set ver=10

::echo .\windows\%ver%\%app%\%command%.bat

:: One Param Command
IF %command%==home GOTO Home
IF %command%==who GOTO WhoIs
IF %app%=="" %command%=="" GOTO DevopsDocumentation
:: set app=devops
::




:: Multi Paramn Command
set app_path=%DEVOPSPATH%\windows\%ver%\%2
IF NOT EXIST %app_path% GOTO PathNotExist
set app_path_file=%app_path%\%1.bat
IF NOT EXIST %app_path_file% GOTO PathNotExist

echo.

IF %app%==doc call .\doc.bat
IF %app%==google GOTO API
IF %app%==demo GOTO Demo

IF %command%==create GOTO Create
IF %command%==install GOTO Install
IF %command%==remove GOTO Remove
IF %command%==on GOTO Source
IF %command%==doc GOTO Documentation

:: :No2
:: for %%i in (%*) do (
::  echo %%i
::   IF %%i==-i GOTO Info
:: IF %%i==-v GOTO Version
::   IF %%i==install GOTO Install
:: )

:: :Info
:: ECHO Info
:: GOTO End1

:: :Version
::  ECHO No param 2
::   .\os\version.bat
:: GOTO End1

:WhoIs
echo %USERNAME%
GOTO End1


:Home
cd %DEVOPSPATH%
GOTO End1

:Demo
   .\windows\%ver%\%command%\%app%.bat
GOTO End1


:Source
   ::echo Source
   ::.\windows\%ver%\%command%\%app%.bat
   set com=".\windows\%ver%\%2\%1.bat" $*
   ::echo %com%
   call %com%
GOTO End1


:Create
   ::.\windows\%ver%\%command%\%app%.bat
   set com=".\windows\%ver%\%app%\%command%.bat" $*
   echo %com%
   call %com%
GOTO End1

:Install
    cls
    call %app_path_file%
GOTO End1

:Remove
    set com=%DEVOPSPATH%\windows\%ver%\%app%\%command%.bat
    echo %com%
    call %com%
GOTO End1


:DevopsDocumentation
  ::cls
  IF %v%==10.0 set ver=10
  set com=%DEVOPSPATH%"\windows\%ver%\devops\doc.bat"
  ::echo %com%
  call %com%
GOTO End1

:Documentation
  ::cls
  IF %v%==10.0 set ver=10
  set com=".\windows\%ver%\%app%\%command%.bat" $*
  echo %com%
  call %com%
GOTO End1


:API

  for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))

:: https://stackoverflow.com/questions/203090/how-do-i-get-current-datetime-on-the-windows-command-line-in-a-suitable-format
  set year=get-date -format "{yyyy}"

  set com=.\api\public\%app%\%command%.bat year+%os%+%v%%qu%
  echo %com%
  call %com%
::  .\api\%app%\%command%.bat %os%+%v%%qu%
GOTO End1

:PathNotExist
    echo " APth of APP not exist: "%app_path%
    echo " APth of APP not exist: "%app_path_file%
GOTO End1

:: devops.bat api google how create+file+in+bash

:: -i
:: --info
:: -v
:: --version

:: ./os/detect.bat


:No1
  ECHO No param 1
GOTO End1


:End1
echo.
echo END