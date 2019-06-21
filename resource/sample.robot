*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Search google
    [Arguments]     ${Keywords}
    Open Browser    https://www.google.com/     chrome      none    http://localhost:4444/wd/hub
    Maximize Browser Window
    Input Text      name=q                      ${Keywords}
    Press Keys      None                        ENTER
    Click Link      Robot Framework
    
Seach image
    [Arguments]     ${Keywords}
    Open Browser    https://www.google.com/     chrome      none    http://localhost:4444/wd/hub
    Maximize Browser Window
    Input Text      name=q                      ${Keywords}
    Press Keys      None                        ENTER
    Click Element   css=#hdtb-msb-vis > div:nth-child(2) > a