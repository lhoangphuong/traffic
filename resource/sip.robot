*** Variables ***
${HOST}                10.103.2.145
${USERNAME}            root
${PASSWORD}            root

*** Keywords ***
Start SIP call
    Open Connection     ${HOST}
    Login               ${USERNAME}        ${PASSWORD}
    Write   cd /home/SiPp/480p30_1M_HP/;./sipp 10.103.2.3 -s 8805001 -mi 10.103.2.145 -i 10.103.2.145 -sf test.xml -aa -r 1 -rp 1000 -l 20 -inf users.csv
    Sleep   30
    Write   qq
    Close Connection