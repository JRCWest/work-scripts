@echo off

::Prompt
set class=%1

if [%1]==[] (
  echo. && echo You gotta enter a class number, doofus.
  set /p class="Class Number? >>"
  )


::FOR loop that parses a list of classes
for /F %%A IN (C:\Scripts\Classes\%class%.txt) DO (
echo %%A

psloggedon 2>nul -l \\%%A 

echo.
)

