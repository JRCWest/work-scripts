:: Designed to run with "Jim's Silent Installers"©

@echo off
pushd %~dp0
setlocal


::PROMPTS
set /p user="Who is this? (domain\username) >> "

::Prompts for password, but displays stars ***.
editv64 -m -p "What is your password, %user%? >>  " pwd

set /p class="Class # >> "
set /p scriptpath="Path to Script >> "

:: String Sub, swapping S: for \\coe-it\ib$
set scriptpath=%scriptpath:s:=\\coe-it\ib$%
echo %scriptpath%

::Calling Subroutine below, getting filename from "pathfix"
call :get_scriptname %scriptpath%

::For Loop for Classes
for /F %%C in (Classes\%class%.txt) DO (

	psexec -h -d -u %user% -p %pwd% \\%%C cmd /c "pushd %scriptpath% && call %scriptname%"

)


::The end is near...
goto :eof
::If you got here, you went too far.

:: Get Filename Subroutine
:get_scriptname
set scriptname=%~nx1
goto :eof