*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open iview
    [Arguments]     ${iview}     
    Open Browser    ${iview}     chrome     none    http://localhost:4444/wd/hub
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Input Text      id=loginForm:username           admin
    Input Text      id=loginForm:password           RAPtor1234                     
    Press Keys      None                            ENTER