@echo off

set /p class="Class # >> "

for /F %%A in (C:\Scripts\Classes\%class%.txt) DO (
	
	echo.
	
	echo %%A
	
	psinfo 2>nul -d \\%%A | findstr "Removable"
	
)