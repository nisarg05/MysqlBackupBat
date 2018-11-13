@echo off
set day=%date:~0,2%
set month=%date:~3,2%
set year=%date:~6,4%
robocopy "backup_directory" "Destination_directory_%year%%month%%day%" /E /maxlad:%year%%month%%day% /a+:R /njh /log:"Log_Directory_%year%%month%%day%.log"
