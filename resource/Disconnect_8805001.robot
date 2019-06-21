*** Settings ***
Library                SSHLibrary

*** Variables ***
${HOST}                10.102.4.86
${USERNAME}            atadmin
${PASSWORD}            1234

*** Test Cases ***
Start SIP call
	Start SIP call
	
*** Keywords ***
Start SIP call
    Open Connection     ${HOST}
    Login               ${USERNAME}        ${PASSWORD}
    Write   AT[&IPV
	Write	AT[&CH1
    Sleep   10
