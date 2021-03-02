@echo off
SET /A four=1+3
SET /A ten=5+5
ECHO calc 1 value = %ten%
ECHO calc 2 value = %four%
ECHO %DATE%
ECHO Date: %DATE%  Time: %TIME%>> testtext.txt
IF EXIST "fi3le.txt" ( 
    ECHO file.txt found) ELSE ( 
        ECHO file.txt not found
    )