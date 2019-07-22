*** Settings ***
Suite teardown      Close all browsers
Resource            /root/tmp/resource/portal.robot
Resource            /root/tmp/resource/XT.robot

*** Variables ***
${system_ip}    10.103.3.81
${portal_ip}    esg154-fedramp.hcm.com
${vr_id}        3402410
${dc}           default       
*** Test Cases ***
1 |--->webRTC call
    Start webRTC call       https://${portal_ip}/portal/tenants/${dc}/?ID=${vr_id}***1&autojoin
    Start webRTC call 2     https://${portal_ip}/portal/tenants/${dc}/?ID=${vr_id}***1&autojoin
    Start webRTC call 3     https://${portal_ip}/portal/tenants/${dc}/?ID=${vr_id}***1&autojoin

2 |--->Stop all current XT call
    Stop XT call

3 |--->XT 5000 call
    Start XT call           10.102.4.86     ${vr_id}

4 |--->XT5000 become moderator
    XT become moderator     10.102.4.86

5 |--->Moderator Invite CU360
    Invite CU360            10.102.4.86

5 |--->XT5000 lock meeting
    XT lock meeting         10.102.4.86

6 |--->XT4300 call
    Start XT call           10.102.4.76     ${vr_id}

7 |--->XT4300 request to join the meeting
    XT request              10.102.4.76  

8 |--->XT5000 accept
    XT accept               10.102.4.86

9 |--->XT5000 unlock meeting
    XT lock meeting         10.102.4.86

10|--->Start SIP call
    Start SIP call          ${system_ip}     ${vr_id}   10

11|--->XT5000 terminate meeting
    XT terminate meeting    10.102.4.86



