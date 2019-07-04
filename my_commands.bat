@Echo off

Set root=C:\MyProjects
REM Set WshShell = WScript.CreateObject("WScript.Shell")

:Create()
cd %root%
python C:\MyProjects\python_automation\create.py %1
cd %root%/%1
git init
start "C:\Program Files\Git\git-bash.exe"
python C:\batch_command_folder\python_automate_node\commands.py %1
python C:\batch_command_folder\python_automate_node\exit.py %1
timeout 2
start "C:\Windows\System32\cmd.exe"
python C:\batch_command_folder\python_automate_node\app.py %1
python C:\batch_command_folder\python_automate_node\exit.py %1
start "C:\Windows\System32\cmd.exe"
cd %root%/%1
python C:\batch_command_folder\python_automate_node\install.py
pause
start "C:\Windows\System32\cmd.exe"
cd %root%/%1
timeout -t -20
python C:\batch_command_folder\python_automate_node\push.py %1
code .
EXIT /B 0