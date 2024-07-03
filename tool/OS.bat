:::::::::::::::::::::::::::::::::::::
: RadioActive Startup Program :::::::
:::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::
:: congratulations. You Finally    ::
:: Builded the Jar. However,       ::
:: you have to run the jar.        ::
:: with options. this console      ::
:: will help you do it.            ::
:::::::::::::::::::::::::::::::::::::

goto commandstart

:commandstart
choice /c av
if %errorlevel% equ 1 goto start-aikar
if %errorlevel% equ 2 goto start-velocity
:start-aikar
set /p min=Number: 
set /p max=Number: 
set /p option=]
java -Xms%min%G -Xmx%max%G -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:G1HeapWastePercent=5 -XX:G1MaxNewSizePercent=40 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1NewSizePercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -XX:MaxGCPauseMillis=200 -XX:MaxTenuringThreshold=1 -XX:SurvivorRatio=32 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar Radioactive-Leavesclip-1.20.6-R0.1-SNAPSHOT-reobf.jar --%option% 
goto :start-aikar

:start-velocity
set /p min=Number: 
set /p max=Number: 
set /p option=]
@echo off
java -Xms%min%G -Xmx%max%G -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:MaxInlineLevel=15 -jar Radioactive-Leavesclip-1.20.6-R0.1-SNAPSHOT-reobf.jar 
goto start-velocity
