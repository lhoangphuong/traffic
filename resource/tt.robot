*** Settings ***
Library     SSHLibrary

*** Keywords ***
Start XT call
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD1868805001
	Close Connection

Start SIP call
    Open Connection     10.103.2.145
    Login               root        root
    Write   cd /home/SiPp/480p30_1M_HP/; ./sipp 10.103.2.3 -s 8805001 -mi 10.103.2.145 -i 10.103.2.145 -sf test.xml -aa -r 1 -rp 1000 -l 10 -inf users.csv
    Sleep   10
    Write   qq
    Close Connection