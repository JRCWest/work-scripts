@echo off

::Prompt
set class=%1

if [%1]==[] (
  echo. && echo You gotta enter a computer name, doofus.
  set /p class="PC Name? >>"
  )


::WMIC piped into SED for easier reading
wmic /node:"%1" nic where netenabled=1 get name, speed | sed -e s/000000000\b/Gbit/ | sed -e s/00000000\b/Mbit/