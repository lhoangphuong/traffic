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

XT 5000 call
    Start XT call           10.102.4.86
	
XT5000 become moderator
    XT5000 become moderator

XT5000 lock meeting
    XT5000 lock meeting

XT 4300 call
    Start XT call           10.102.4.76

XT 4300 request
    XT4300 request
    
XT5000 accept
    XT5000 accept

XT5000 unlock meeting
    XT5000 lock meeting

Start SIP call
    Start SIP call

XT5000 terminate meeting
    XT5000 terminate meeting
  	

