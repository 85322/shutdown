@ECHO off
color 0a
ECHO OPTIONS
ECHO.
ECHO [1] = Shutdown
ECHO [2] = Shutdown in 1 minute
ECHO [3] = Shutdown in 10 minutes
ECHO [4] = Shutdown in 30 minutes
ECHO [5] = Reboot
ECHO [6] = Hibernate
ECHO [9] = Shutdown CANCEL
ECHO [0] = Exit
ECHO.
ECHO (Running as admin is required)
ECHO Type option.
:main
SET option=
SET /P option=
IF %option%==1 SHUTDOWN /s /f /t 0
IF %option%==2 SHUTDOWN /s /t 60
IF %option%==3 SHUTDOWN /s /t 600
IF %option%==4 SHUTDOWN -s -t 1800
IF %option%==5 SHUTDOWN -r -t 10
IF %option%==6 SHUTDOWN /h
IF %option%==9 SHUTDOWN -a
IF %option%==0 EXIT

SET /A evaluated=option
    IF %option% GTR 0 ( ECHO Positive )
    IF %option% LSS 0 ( ECHO Negative )
    IF %option% EQU 0 ( ECHO Zero )



ECHO Option chosen was: %option%
GOTO main


