*** Settings ***
Library     SSHLibrary

*** Keywords ***
Start XT call
    [Arguments]         ${XT_url}       ${vr_id}
    Open Connection     ${XT_url}
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CD186${vr_id}
    Sleep   2
	Close All Connections

XT become moderator
    [Arguments]         ${XT_url}
    Open Connection     ${XT_url}
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
    Sleep   1
    Write	AT[&CF1
    Write	AT[&CF1
    Write	AT[&CF#
    Sleep   1
    Write	AT[&CF#
    Sleep   1
	Close All Connections

Invite CU360
    [Arguments]         ${XT_url}
    Open Connection     ${XT_url}
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
    Sleep   1
     Write	AT[&CF8
    Write	AT[&CF2
    Write	AT[&CF2
    Write	AT[&CF0
    Write	AT[&CF2
    Write	AT[&CF1
    Write	AT[&CF3
    Write	AT[&CF5
    Write	AT[&CF#
    Sleep   1
    Write	AT[&CF#
    Sleep   1
	Close All Connections

XT terminate meeting
    [Arguments]         ${XT_url}
    Open Connection     ${XT_url}
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
    Sleep   2
    Write	AT[&CF5
    Sleep   2
	Close All Connections

XT lock meeting
    [Arguments]         ${XT_url}
    Open Connection     ${XT_url}
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF*
    Sleep   1
    Write	AT[&CF7
    Sleep   2
	Close All Connections

XT request
    [Arguments]         ${XT_url}
    Open Connection     ${XT_url}
    Login               atadmin      1234
    Write   AT[&IPV
	Write	AT[&CF#
    Sleep   2
	Close All Connections

XT accept
    [Arguments]         ${XT_url}
    Open Connection     ${XT_url}
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
	
	#Open Connection     10.102.4.17
    #Login               atadmin      1234
    #Write   AT[&IPV
	#Write	AT[&CH1
    #Sleep   2
	#Close All Connections
	
Start SIP call
    [Arguments]         ${system}    ${vr_id}   ${number of call}
    Open Connection     10.103.2.145
    Login               root        root
    Write   cd /home/SiPp/720p_2M/; ./sipp ${system} -s ${vr_id} -mi 10.103.2.145 -i 10.103.2.145 -sf test.xml -aa -r 1 -rp 1000 -l ${number of call} -inf users.csv
    Sleep   30
    Write   qq
    Sleep   2
    Close All Connections