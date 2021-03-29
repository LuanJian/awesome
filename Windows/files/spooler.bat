@echo off
net session /delete /y>nul 2>nul
sc config spooler start= disabled>nul 2>nul
net stop spooler>nul 2>nul
attrib %systemroot%\System32\spool\PRINTERS\*.* -R /s>nul 2>nul
del %systemroot%\System32\spool\PRINTERS\*.* /q /s>nul 2>nul
sc config spooler start= auto>nul 2>nul
net start spooler>nul 2>nul
echo msgbox "清除完毕，请打印测试",,"提示" >%temp%\404.vbs
start /w %temp%\404.vbs
del /q %temp%\404.vbs
exit
