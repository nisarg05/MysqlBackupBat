@echo off
set day=%date:~0,2%
set month=%date:~3,2%
set year=%date:~6,4%
robocopy "\\3dbp-india\fileserver\1000_NL_Project\1002_Rochdale_RunningProj" "F:\daily\RD_%year%%month%%day%" /E /maxlad:%year%%month%%day% /a+:R /njh /log:"F:\log\RD_%year%%month%%day%.log"