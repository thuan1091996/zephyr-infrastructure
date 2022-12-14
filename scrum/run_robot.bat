@echo off
set SCRIPT_DIR=%~dp0\infrastructure
set RESULT_DIR=%~dp0\result_dir

set ROBOT_ARGS=
:: set ROBOT_ARGS=--timestampoutputs
set ROBOT_ARGS=%ROBOT_ARGS% --outputdir %RESULT_DIR%
set ROBOT_TARGET=repository.robot

:: Call script
python -m robot %ROBOT_ARGS% %SCRIPT_DIR%\%ROBOT_TARGET%
