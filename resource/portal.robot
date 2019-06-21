*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Start webRTC call 1
    [Arguments]     ${Portal_url}
    ${list} =             Create List           --use-fake-ui-for-media-stream --use-fake-device-for-media-stream --use-file-for-fake-video-capture=C:\\Video\\sintel_trailer_2k_480p24.y4m
    ${args} =             Create Dictionary     args=${list}
    ${desired caps} =     Create Dictionary     chromeOptions=${args}

    Open Browser    ${Portal_url}   chrome   none    http://localhost:4444/wd/hub     desired_capabilities=${desired caps}
    Sleep       3s
    Press Keys  None    Phim
    Press Keys  None    ENTER

Start webRTC call 2
    [Arguments]     ${Portal_url}
    ${list} =             Create List           --use-fake-ui-for-media-stream --use-fake-device-for-media-stream --use-file-for-fake-video-capture=C:\\Video\\bowing_qcif.y4m
    ${args} =             Create Dictionary     args=${list}
    ${desired caps} =     Create Dictionary     chromeOptions=${args}

    Open Browser    ${Portal_url}   chrome   none    http://localhost:4444/wd/hub     desired_capabilities=${desired caps}
    Sleep       3s
    Press Keys  None    Cui Chao
    Press Keys  None    ENTER

Start webRTC call 3
    [Arguments]     ${Portal_url}
    ${list} =             Create List           --use-fake-ui-for-media-stream --use-fake-device-for-media-stream --use-file-for-fake-video-capture=C:\\Video\\ducks_take_off_1080p50.y4m
    ${args} =             Create Dictionary     args=${list}
    ${desired caps} =     Create Dictionary     chromeOptions=${args}

    Open Browser    ${Portal_url}   chrome   none    http://localhost:4444/wd/hub     desired_capabilities=${desired caps}
    Sleep       3s
    Press Keys  None    May Con Vit
    Press Keys  None    ENTER