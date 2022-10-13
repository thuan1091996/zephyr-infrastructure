@echo off
set SCRIPT_DIR=%~dp0
set RESULT_DIR=%SCRIPT_DIR%result_dir
set ROBOT_ARGS=--timestampoutputs --outputdir %RESULT_DIR%

:: Call script
python -m robot %ROBOT_ARGS% %SCRIPT_DIR%infrastructure.robot 
