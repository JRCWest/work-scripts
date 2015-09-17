@echo off

set /p class="Class # >> "

for /F %%A IN (C:\Scripts\Classes\%class%.txt) DO (

::Pings & searches for "TTL""
echo %%A...
ping -n 1 %%A | find "TTL="

::If TTL isn't present, change color & display dead computer name.
if ERRORLEVEL 1 (color 4F & echo %%A is dead, apparently.) else (color)

echo.
)

::Go back to default colorscheme when loop finishes.
color