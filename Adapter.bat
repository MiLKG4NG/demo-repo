echo off
cls 
:start
echo Choice 1 = Enable
echo Choice 2 = Disable
set /p choice=Yes or No?
if '%Choice%'=='1' goto :choice1
if '%Choice%'=='2' goto :choice2
echo "%Choice%" is not a valid option. Please try again. 
echo
goto start
:choice1
netsh interface set interface "Ethernet" admin=Enable
echo Network Enabled
goto end 
:end
pause
exit  
:choice2
netsh interface set interface "Ethernet" admin=disable
echo Network Disabled
goto end 
:end
pause
exit 