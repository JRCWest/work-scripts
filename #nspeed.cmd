@echo off

::Prompt
set /p class="Room # >> "

::FOR loop that parses a list of classes
for /F %%A IN (C:\Scripts\Classes\%class%.txt) DO (
echo %%A

::WMIC Piped into SED for easier reading
wmic /node:"%%A" nic where netenabled=1 get name, speed | sed -e s/000000000\b/Gbit/ | sed -e s/00000000\b/Mbit/ )