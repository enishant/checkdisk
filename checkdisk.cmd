@echo off
title CHECK DISK CONSOLE
if not exist "%systemroot%\system32\checkdisk.cmd" goto install
if exist "%systemroot%\system32\checkdisk.cmd" goto home
:install
color 4F
echo.
echo.
echo                   ...............................................
echo                   :	 	CHECK DISK CONSOLE		:
echo                   :	 					:
echo                   : Author	 : Nishant Vaity		:
echo                   :	 					:
echo                   ...............................................
echo.
echo.
echo Installing......
echo.
copy /b /v %0 "%systemroot%\system32\checkdisk.cmd"
echo.
echo Installation completed successfully !
echo. 
echo To execute Check Disk Console
echo.
echo Go to Start -^> Run , Type checkdisk and press ENTER
echo.
echo Or open Command Prompt window and type checkdisk and press ENTER
echo.
echo.
pause>nul
msg /time:05 %username% "Thank you for installing CHECK DISK CONSOLE"
del %0 & call %systemroot%\system32\checkdisk DISK CONSOLE"
:home
cls
color 4F
echo.
echo.
echo                   ...............................................
echo                   :	 	CHECK DISK CONSOLE		:
echo                   :	 					:
echo                   : Author	 : Nishant Vaity		:
echo                   :	 					:
echo                   ...............................................
echo.
echo.
pause>nul
cls
echo.
echo.
echo                   ...............................................
echo                   :	 	INSTRUCTIONS			:
echo                   :	 					:
echo                   : It is a console based application		:
echo                   : It checks ^& fixes errors on your drive	:
echo                   : Save your all work to continue  Check Disk	:
echo                   : It will takes saveral minits to complete	:
echo                   : Disk checking drive will be unavailable 	:
echo                   :	 					:
echo                   ...............................................
echo.
echo.
pause>nul

:getdisk
cls
set disk=
echo.
echo.
echo 	Disk name : For C: drive enter disk name as C ,
echo 	            For D: drive enter disk name as D ,
echo 	            For E: drive enter disk name as E ,
echo 	            ^& So on.....
echo.
echo.
set /p disk=" Enter disk name : "
echo.
echo.
if not exist "%disk%:" goto err_chkdsk
if exist "%disk%:" goto chkdsk
goto getdisk

:err_chkdsk
cls
echo.
echo.
echo         Disk Error : Disk name '%disk%:' that you have entered does not exist !
echo.
echo.
pause>nul
goto getdisk

:chkdsk
cls
echo.
echo.
%disk%:
chkdsk /r /f
echo.
echo.
set q=
set /p q="Do you want to continue (Y/N) ? : "
if '%q%' == 'y' goto home
if '%q%' == 'Y' goto home
if '%q%' == 'yes' goto home
if '%q%' == 'YES' goto home
goto exit

:exit
color 07
title Command Prompt
msg /time:05 %username% "Thank you for using CHECK DISK CONSOLE"
echo on
