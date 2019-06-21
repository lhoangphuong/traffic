*** Settings ***
Suite teardown       Close all browsers
Resource             /root/tmp/resource/portal.robot
Resource             /root/tmp/resource/iview.robot
Resource             /root/tmp/resource/sample.robot

*** Test Cases ***
1 |--->Search google
    [Documentation]         Search a keyword with google
    Search google           robot framework

2 |--->Search images
    [Documentation]         Search a keyword with google
    Seach image             cute cat
    