*** Settings ***
Library     SSHLibrary

*** Keywords ***
Start XT86 call
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD1863112222
    Sleep   2
	Close All Connections
	
Start XT76 call
    Open Connection     10.102.4.76
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD1863112222
    Sleep   2
	Close All Connections

Start XT17 call
    Open Connection     10.102.4.17
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD1863112222
    Sleep   2
	Close All Connections	

Stop XT call
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CH1
    Sleep   2
	Close All Connections
	
	Open Connection     10.102.4.76
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CH1
    Sleep   2
	Close All Connections
	
	Open Connection     10.102.4.17
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CH1
    Sleep   2
	Close All Connections
	
	

Start SIP call
    Open Connection     10.103.2.145
    Login               root        root
    Write   cd /home/SiPp/480p30_1M_HP/; ./sipp 10.103.3.218 -s 3112222 -mi 10.103.2.145 -i 10.103.2.145 -sf test.xml -aa -r 1 -rp 1000 -l 30 -inf users.csv
    Sleep   99999
    Write   qq
    Sleep   2
    Close All Connections