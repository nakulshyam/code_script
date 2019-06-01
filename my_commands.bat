@Echo on

set root=C:\MyProjects
Set WshShell = WScript.CreateObject("WScript.Shell")

:Create()
cd %root%
python C:\MyProjects\python_automation\create.py %1
REM md %1
cd %root%/%1
REM npm init
git init
touch app.js
REM npm install express ejs --save
code .
EXIT /B 0