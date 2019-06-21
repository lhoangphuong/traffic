*** Settings ***
Library     SSHLibrary

*** Keywords ***
Start XT86 call
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD1868805001
    Sleep   2
	Close All Connections
	
Start XT76 call
    Open Connection     10.102.4.76
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD1868805001
    Sleep   2
	Close All Connections

Start XT17 call
    Open Connection     10.102.4.17
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD1868805001
    Sleep   2
	Close All Connections	

XT5000 become moderator
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
    Write	AT[&CF1
    Write	AT[&CF1
    Write	AT[&CF#
    Sleep   2
    Write	AT[&CF#
    Sleep   2
	Close All Connections

XT5000 terminate meeting
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
    Sleep   2
    Write	AT[&CF5
    Sleep   2
	Close All Connections

XT5000 lock meeting
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
    Sleep   1
    Write	AT[&CF7
    Sleep   2
	Close All Connections

XT4300 request
    Open Connection     10.102.4.76
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF#
    Sleep   2
	Close All Connections

XT7000 request
    Open Connection     10.102.4.17
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF#
    Sleep   2
	Close All Connections

XT5000 accept
    Open Connection     10.102.4.86
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
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
    Write   cd /home/SiPp/480p30_1M_HP/; ./sipp 10.103.2.3 -s 8805001 -mi 10.103.2.145 -i 10.103.2.145 -sf test.xml -aa -r 1 -rp 1000 -l 5 -inf users.csv
    Sleep   60
    Write   qq
    Sleep   2
    Close All Connections