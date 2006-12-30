@rem $Id$

@if "%_echo%" == "" @echo off

setlocal

call %~dp0sysinfo || exit /b 1
call %~dp0pkginfo || exit /b 1
call %~dp0pkgcmds || exit /b 1

call %~dp0pkgcmds extract_options %* || (
	echo error : pkgcmds extract_options failed
	exit /b 1
)

set IGNORE_MISS=yes

call %~dp0pkgcmds map_action %* || (
	echo error : pkgcmds map_action failed
	exit /b 1
)

call %~dp0pkgcmds add_action_opts %* || (
	echo error : pkgcmds add_action_opts failed
	exit /b 1
)

call %~dp0pkgcmds get_args %* || (
	echo error : pkgcmds get_args failed
	exit /b 1
)

call :Run call %~dp0pkgmap %OPTIONS% %ADDARGS% -c "%ACTION%" %ARGS%

endlocal
goto :eof

:Run
setlocal
set x=%*
set x=%x:  = %
set x=%x:  = %
echo %x%
%x% || (
	echo error : %x% failed
	exit /b 1
)
endlocal
goto :eof
