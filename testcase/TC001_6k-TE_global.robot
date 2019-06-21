*** Settings ***
Suite teardown    Close all browsers
Resource       /root/tmp/resource/portal.robot
Resource       /root/tmp/resource/XT.robot

*** Test Cases ***
1 |--->webRTC call
    Start webRTC call       https://global-esg.avaya.com/portal/tenants/default/?ID=8805001***1&autojoin
    Start webRTC call 2     https://global-esg.avaya.com/portal/tenants/default/?ID=8805001***1&autojoin
    Start webRTC call 3     https://global-esg.avaya.com/portal/tenants/default/?ID=8805001***1&autojoin

2 |--->Stop XT call
    Stop XT call

3 |--->XT 5000 call
    Start XT call           10.102.4.86
	
4 |--->XT5000 become moderator
    XT become moderator     10.102.4.86

5 |--->XT5000 lock meeting
    XT lock meeting         10.102.4.86         

6 |--->XT 4300 call
    Start XT call           10.102.4.76

7 |--->XT 4300 request
    XT request              10.102.4.76
    
8 |--->XT5000 accept
    XT accept               10.102.4.86

9 |--->XT5000 unlock meeting
    XT lock meeting         10.102.4.56

10|--->Start SIP call
    Start SIP call

11|--->XT5000 terminate meeting
    XT terminate meeting    10.102.4.86
  	

