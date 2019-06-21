*** Settings ***
Suite teardown    Close all browsers
Resource       /root/tmp/resource/portal.robot
Resource       /root/tmp/resource/XT.robot

*** Test Cases ***
webRTC call
    Start webRTC call       https://global-esg.avaya.com/portal/tenants/default/?ID=8805001***1&autojoin
    Start webRTC call 2     https://global-esg.avaya.com/portal/tenants/default/?ID=8805001***1&autojoin
    Start webRTC call 3     https://global-esg.avaya.com/portal/tenants/default/?ID=8805001***1&autojoin

Stop XT call
    Stop XT call

Start XT call
    Start XT86 call
	
XT5000 become moderator
    XT5000 become moderator

XT5000 lock meeting
    XT5000 lock meeting

Start XT call 2
    Start XT76 call
#   Start XT17 call

XT 4300 request
    XT4300 request
    
XT5000 accept
    XT5000 accept

#XT7000 request
#    XT7000 request

#XT5000 accept 2
#    XT5000 accept

XT5000 unlock meeting
    XT5000 lock meeting

Start SIP call
    Start SIP call

XT5000 terminate meeting
    XT5000 terminate meeting

#Stop XT call
#    Stop XT call     	

