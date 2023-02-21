@echo off
cls

:menu
echo.
echo      -------------------
echo         LOGO or BASIC   
echo        Press 1, 2 or 3  
echo      -------------------
echo           1 - LOGO
echo           2 - BASIC
echo           3 - DOS
echo.
set /p M=Type 1, 2 or 3 and press ENTER: 
if %M%==1 goto LOGO
if %M%==2 goto BASIC
if %M%==3 goto end
rem otherwise:
cls
echo Invalid!
goto menu


:BASIC
echo BASIC
BASIC.BAT
goto end


:LOGO
echo LOGO
LOGO.BAT
goto end

:end