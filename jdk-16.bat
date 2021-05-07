@ECHO OFF
GOTO checkAdmin

:: Check if batch-file is run with admin privileges
:checkAdmin
	FSUTIL dirty query %systemdrive% >nul 2>&1
	IF %errorLevel% == 1 (
		GOTO isNotAdmin
	) ELSE (
		GOTO isAdmin
	)

:isNotAdmin
	:: Create elevated process that runs this file again
	SETLOCAL DisableDelayedExpansion
	SET "batchPath=%~0"
	SETLOCAL EnableDelayedExpansion

	ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs"
	ECHO UAC.ShellExecute "!batchPath!", "ELEV", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs"
	"%temp%\OEgetPrivileges.vbs"
	EXIT /B

	GOTO EOF

:isAdmin
	CALL :codeToExecute

	GOTO EOF
	
:codeToExecute
	:: Actual code that needs executin' - pointing env vars to jdk-16
	setx -m JAVA_HOME "D:\Program Files\Java\jdk16.0.1"
	setx -m PATH "%PATH%;%JAVA_HOME%\bin"
:EOF
