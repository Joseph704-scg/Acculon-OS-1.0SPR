@echo off
echo Loading system...
powershell -c (New-Object Media.SoundPlayer \"C:\Users\Josep\Downloads\Systemstartup.wav\").PlaySync();
echo gotdev.lllo sydocs.sys system.ready
echo Welcome user!
echo Welcome to Acculon Operating System Command line.
:loop
cls
echo ==============================
echo          System Menu
echo ==============================
echo 1. File Management
echo 2. Process Management
echo 3. Networking Tools
echo 4. Customization
echo 5. Task Automation
echo 6. System Monitoring
echo 7. Exit System
echo 8. Command Line
echo ==============================
set /p choice=Choose an option:

if "%choice%"=="1" goto file_management
if "%choice%"=="2" goto process_management
if "%choice%"=="3" goto networking_tools
if "%choice%"=="4" goto customization
if "%choice%"=="5" goto task_automation
if "%choice%"=="6" goto system_monitoring
if "%choice%"=="7" exit
if "%choice%"=="8" goto command_line 

:file_management
cls
echo File Management Options:
echo 1. Create a file
echo 2. Delete a file
set /p fm_choice=Choose an option:
if "%fm_choice%"=="1" echo. > newfile.txt & echo File created!
if "%fm_choice%"=="2" del newfile.txt & echo File deleted!
pause
goto menu

:process_management
cls
echo Listing running processes...
tasklist
pause
goto menu

:networking_tools
cls
echo Enter website to ping:
set /p website=
ping %website%
pause
goto menu

:customization
cls
echo Choose a color theme:
echo 1. Green
echo 2. Blue
echo 3. Red
set /p color_choice=Choose a theme:
if "%color_choice%"=="1" color 0A
if "%color_choice%"=="2" color 09
if "%coloe_choice%"=="3" color 0b
echo Color changed!
pause
goto menu

:task_automation
cls
echo Automating task...
echo Running cleanup...
del *.tmp
echo Cleanup complete!
pause
goto menu

:system_monitoring
cls
echo System Monitoring Tools:
echo CPU Usage:
wmic cpu get loadpercentage
echo Disk Usage:
wmic logicaldisk get size,freespace
pause
goto menu


:command_line
cls
set /p input="Enter command: "
if "%input%"=="model" echo Model: Acculon Command Line OS 1.0 Copyright Acculon Hardware Co.
if "%input%"=="game=binary" echo Sorry. Not available.
if "%input%"=="power off" (
   echo All system and personal files saved successfully! Ready to be powered off.
   exit
)
if "%input%"=="hello" echo Hello! How Are You Today? Press enter to go back.
if "%input%"=="good" echo Glad to hear! Let's get started on some tasks! Press enter to go back.
if "%input%"=="bad" echo Sorry to hear. Maybe we can start some tasks!Press enter to go back.
if "%input%"=="play game" echo Not available. Press enter to go back.
if "%input%"=="save files" echo All files saved. Press enter to go back.
if "%input%"=="direc" echo System Directory: Acculon Command Line OS.cs current. Press enter to go back.
if "%input%"=="joke" echo Why don't skeletons fight? The don't have the guts!! :) Press enter to go back.
if "%input%"=="credits" echo Joseph Jarrell; Founder, President, and CEO of Acculon OS. Press enter to go back.
if "%input%"=="all commands" echo model = system model; game=binary = make a game; power off = saves all changed files. Press enter to go back.
if "%input%"=="new text file" (
   echo Ready for new text.
   set /p newText="Enter text: "
   echo %newText% > C:\Users\Josep\Desktop\acc folder\text.txt
)
if "%input%"=="new random game" echo New Game not available. (Subject to change though.) Press enter to go back.
pause

goto loop


