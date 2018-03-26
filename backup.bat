: 	Mysql batch script for backup 
@ECHO OFF
:SetDrive
SET /P drive=Please enter drive where MySql install: 
IF "%drive%"=="" GOTO ErrorDrive
:SetPath
SET /P path=Please enter mysql BIN directory path: 
IF "%path%"=="" GOTO ErrorPath
:SetHost
SET /P host=Please enter host IP: 
IF "%host%"=="" GOTO ErrorHost
:SetPort
SET /P port=Please enter host Port: 
IF "%port%"=="" GOTO ErrorPort
:SetUser
SET /P user=Please enter host User: 
IF "%user%"=="" GOTO ErrorUser
:SetPass
SET /P pass=Please enter password: 
IF "%pass%"=="" GOTO ErrorPass
:SetDB
SET /P db=Please enter host Database: 
IF "%db%"=="" GOTO ErrorDB
:SetexpPath
SET /P expPath=Please enter host Export path: 
IF "%expPath%"=="" GOTO ErrorexpPath
GOTO End
:ErrorDrive
ECHO You did not enter Drive!! 
GOTO SetDrive
:ErrorPath
ECHO You did not enter Path!! 
GOTO SetPath
:ErrorHost
ECHO You did not enter Host!! 
GOTO SetHost
:ErrorPort
ECHO You did not enter Port!! 
GOTO SetPort
:ErrorUser
ECHO You did not enter User!! 
GOTO SetUser
:ErrorPass
ECHO You did not enter Password!! 
GOTO SetPass
:ErrorDB
ECHO You did not enter DB!! 
GOTO SetDB
:ErrorexpPath
ECHO You did not enter DB!! 
GOTO SetDB
:End
"%path%"\mysqldump.exe --protocol=TCP --host="%host%" --port="%port%" --user="%user%" --password="%pass%" "%db%" > "%expPath%"\"%db%".sql"
pause