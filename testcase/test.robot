*** Settings ***
Suite teardown      Close all browsers
Resource            /root/tmp/resource/portal.robot
Resource            /root/tmp/resource/XT.robot

*** Test Cases ***
10  |--->Start SIP call
    Start SIP call          10.103.3.61     4822222