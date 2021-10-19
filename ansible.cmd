@echo off
REM "alias" for ansible running in cmd/powershell
set args=%*
REM replace backslashes with slashes
call set args=%%args:\=/%%
REM fix drive letters
call set args=%%args:C:=/mnt/c%%
REM call set args=%%args:D:=/mnt/d%%
REM call set args=%%args:E:=/mnt/e%%
call set args=%%args:/"=%%
call set args=%%args:"'='%%
call set args=%%args:'"='%%
call set args=%%args:"=^'%%

C:\Windows\System32\bash.exe -c "ansible %args%"
