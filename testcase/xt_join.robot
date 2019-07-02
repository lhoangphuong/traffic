*** Settings ***
Resource            /root/tmp/resource/XT.robot

*** Variables ***
${system_ip}    10.103.2.3
${vr_id1}        8804101
${vr_id2}        8804102

*** Test Cases ***
1 |--->Stop XT call
    Stop XT call

2 |--->XT call
    Start XT call           10.102.4.76     ${vr_id1}
    XT become moderator     10.102.4.76
    Start XT call           10.102.4.86     ${vr_id1}
    XT become moderator     10.102.4.86
    Sleep   30

3 |--->Stop XT call
    Stop XT call

4 |--->XT call
    Start XT call           10.102.4.76     ${vr_id2}
    XT become moderator     10.102.4.76
    Start XT call           10.102.4.86     ${vr_id2}
    XT become moderator     10.102.4.86
    Sleep   30

5 |--->Stop XT call
    Stop XT call
