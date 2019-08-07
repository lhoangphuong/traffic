*** Settings ***
Library     SSHLibrary

*** Keywords ***
Switch camera
    [Arguments]         ${XT_url}
    Open Connection     ${XT_url}
    Login               atadmin      1234
    Write   AT[&IPV
    Write   AT[&SF01051
    Sleep   5s
    Write   AT[&SF01052
    Sleep   5s
    Write   AT[&SF01053
    Sleep   5s
    Write   AT[&SF01054
    Sleep   5s
    Write   AT[&SF01055
    Sleep   5s
    Write   AT[&SF01056
    Sleep   5s
    Write   AT[&SF01057
    
   