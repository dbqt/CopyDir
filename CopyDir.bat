@echo off
REM CopyDir : MS-DOS Script by David Binh Quang Tran
REM Copyleft 2015


REM Change "dest" the directory where to copy everything from the current directory

set dest="K:\Dossier User\Desktop\ttttt"






REM Do not touch anything below!!!

set curr="%~dp0"

Echo Are you sure you want to copy everything from 
Echo %curr%
Echo to
Echo %dest%
set /p answer=[y/n]?: 
if "%answer%"=="y" (GOTO copyandcontinue) else ( GOTO exiting)

:copyandcontinue
cd %dest%
Echo Copying from "%~dp0." to %dest%
xcopy "%~dp0." %dest% /e/i/r/k/y 

:exiting
Echo Exiting...
Pause