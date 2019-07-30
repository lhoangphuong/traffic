*** Settings ***
Resource            /root/tmp/resource/XT.robot

*** Variables ***
${system_ip}    10.103.3.81
${vr_id1}        1105555
${vr_id2}        1105556

*** Test Cases ***
1 |--->Stop XT call
    Stop XT call

2 |--->XT call
    Start XT call           10.102.4.76     ${vr_id1}
    XT become moderator     10.102.4.76
    Start XT call           10.102.4.86     ${vr_id2}
    XT become moderator     10.102.4.86
    Sleep   30

3 |--->XT call 2
    Start XT call           10.102.4.76     ${vr_id2}
    XT become moderator     10.102.4.76
    Start XT call           10.102.4.86     ${vr_id1}
    XT become moderator     10.102.4.86
    Sleep   30

4 |--->Stop XT call
    Stop XT call
