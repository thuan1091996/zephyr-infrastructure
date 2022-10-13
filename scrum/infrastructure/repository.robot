*** Settings ***
Library  OperatingSystem
Library  Process

Variables  ${CURDIR}\\variables.py

*** Test Cases ***

Git repository has been setup
	Zephyr repository has a west yaml file
	Zephyr repository has a top level CMake file
	Zephyr repository has a top level Kconfig file
	Zephyr repository has a license file
	Zephyr repository has a gitignore file
	Zephyr repository has a CODEOWNERS file
	Zephyr repository has a precommit hook
	Zephyr repository has a VERSION file
	Zephyr repository has an init script that sets up the workspace

*** Keywords ***
Zephyr repository has a top level CMake file
	File Should Exist  ${PROJECT_DIR}\CMakeLists.txt

Zephyr repository has a top level Kconfig file
	File Should Exist  ${PROJECT_DIR}\Kconfig

Zephyr repository has a license file
	File Should Exist  ${PROJECT_DIR}\LICENSE

Zephyr repository has a gitignore file
	File Should Exist  ${PROJECT_DIR}\.gitignore

Zephyr repository has a west yaml file
	File Should Exist  ${PROJECT_DIR}\west.yml

Zephyr repository has a CODEOWNERS file
	File Should Exist  ${PROJECT_DIR}\CODEOWNERS

Zephyr repository has a precommit hook
	File Should Exist  ${PROJECT_DIR}\.githooks\pre-commit

Zephyr repository has a VERSION file
	File Should Exist  ${PROJECT_DIR}\VERSION

Zephyr repository has an init script that sets up the workspace
	File Should Exist  ${PROJECT_DIR}\scripts\init

Codeowners file is sorted
${result}=  Run Process  ${CURDIR}\..\..\scripts\ci\check-file-sorted  ${CURDIR}\..\..\CODEOWNERS
IF  ${result.rc} != 0
	Log To Console  CODEOWNERS file is not sorted
	Log To Console  ${result.stdout}
	Fail
END