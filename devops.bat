@ECHO OFF &SETLOCAL
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
set app=%1
set command=%2
set query=%3

::echo .\windows\%ver%\%app%\%command%.bat

IF %app%==doc call .\doc.bat
IF %app%==google GOTO API
IF %command%==doc GOTO Documentation
IF %command%==install GOTO Install
IF %command%==remove GOTO Remove

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

:Install
::  ECHO No param 2
  for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))

  IF %v%==10.0 set ver=10
   .\windows\%ver%\%app%\%command%.bat
GOTO End1

:Remove
::  ECHO No param 2
  for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))

  IF %v%==10.0 set ver=10
  .\windows\%ver%\%app%\%command%.bat
GOTO End1


:Documentation
  IF %v%==10.0 set ver=10
  .\windows\%ver%\%app%\%command%.bat
GOTO End1


:API

  for /f "tokens=4-7 delims=[.] " %%i in ('ver') do (if %%i==Version (set v=%%j.%%k) else (set v=%%i.%%j))

  set com=.\api\%app%\%command%.bat %os%+%v%%qu%
  echo %com%
  call %com%
::  .\api\%app%\%command%.bat %os%+%v%%qu%
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
echo Bye