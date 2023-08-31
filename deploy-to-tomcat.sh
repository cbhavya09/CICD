@echo off

set "TOMCAT_HOME=D:\apache-tomcat-11.0.0-M6"
set "WAR_FILE=target\your-app.war"  REM Adjust this based on your project structure

REM Stop Tomcat
call "%TOMCAT_HOME%\bin\shutdown.bat"

REM Remove the old deployed application
rmdir /s /q "%TOMCAT_HOME%\webapps\your-app"

REM Copy the new WAR file to webapps directory
copy /y "%WAR_FILE%" "%TOMCAT_HOME%\webapps"

REM Start Tomcat
call "%TOMCAT_HOME%\bin\startup.bat"
