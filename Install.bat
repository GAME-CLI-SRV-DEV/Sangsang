echo off
color a
cls
echo RadioactiveOS Installation DISK ][
echo Welcome To RadioactiveOS.
echo You Have To Install RadioactiveOS In Order to Use IT.
echo OS will be compiled in build\libs.
echo Press Any Key To Start Operating System.
pause >nul
cls 
echo RadioactiveOS
echo.
echo ----------- ON ----------
echo Radioactive 2019
echo Supported Loader
echo Bukkit, Spigot, Paper, Tuinity, Airplane, Purpur, Pufferfish, Plazma, Leaves, Patina, Jettpack
echo NONE
echo Starting Builder
echo ----------- ON ----------
echo Bukkit By Wolvereness and EvilSeph(Warren Loo), Unofficially Owned By Satya Nadella
echo Spigot By md_5(Michael), Unofficially Owned By Mark Zuckerburg
echo Paper By papermc 
echo Tuinity By SpottedLeaf
echo Airplane By TECHNOVE
echo Purpur By granny
echo Pufferfish By Pufferfish Host
echo Plazma By IPECTER and Alpha93
echo Leaves By Violetc
echo Patina by PatinaMC
echo Jettpack By TitaniumTown
echo off
color a
cls
echo RadioactiveOS Installation DISK ][
echo Welcome To RadioactiveOS.
echo You Have To Install RadioactiveOS In Order to Use IT.
echo OS will be compiled in build\libs.
echo Press Any Key To Start Operating System.
pause >nul
cls 
echo RadioactiveOS
echo.
echo ----------- ON ----------
echo Radioactive 2019
echo Supported Loader
echo Bukkit, Spigot, Paper, Tuinity, Airplane, Purpur, Pufferfish, Plazma, Leaves, Patina, Jettpack
echo NONE
echo Starting Builder
echo ----------- ON ----------
echo Bukkit By Wolvereness and EvilSeph(Warren Loo), Unofficially Owned By Satya Nadella
echo Spigot By md_5(Michael), Unofficially Owned By Mark Zuckerburg
echo Paper By papermc 
echo Tuinity By SpottedLeaf
echo Airplane By TECHNOVE
echo Purpur By granny
echo Pufferfish By Pufferfish Host
echo Plazma By IPECTER and Alpha93
echo Leaves By Violetc
echo Patina by PatinaMC
echo Jettpack By TitaniumTown
:1
set /p com=]
if /i %com% equ patch ( call gradlew applypatches && goto :1 )
if /i %com% equ build ( goto :Level )
if /i %com% equ rebuildpatch ( call gradlew rebuildpatches && goto :1 )
if /i %com% equ help ( call gradlew --tasks && goto :1 )
echo ?Syntax Error. this is not Radioactive Installer Command.
goto :1

:Level
choice /c 12
if %errorlevel% equ 1 call gradlew createreobfleavesclipjar && goto :1
if %errorlevel% equ 2 call gradlew createmojmapleavesclipjar && goto :1

