*** Settings ***
Library  AppiumLibrary  10
Suite Setup  Open Application  ://localhost:4723/wd/hub
             ...  platformName=Android
             ...  deviceName=Cu360
             ...  udid=19YT01310139
             ...  appPackage=com.avaya.vdocom
             ...  appActivity=com.avaya.vdocom.MainActivity
             
Suite Teardown  Close Application

*** Test Cases ***
Click call
    Click Element   xpath=//*[@text = 'Call']
