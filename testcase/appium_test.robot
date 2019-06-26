*** Settings ***
Library  AppiumLibrary  10
Suite Setup  Open Application  http://10.128.224.44:4723/wd/hub
             ...  platformName=Android
             ...  deviceName=CU360
             ...  udid=19YT01310139
             ...  app=F:\\Download\\Google Chrome Fast Secure_v74.0.3729.157_apkpure.com.apk
             ...  automationName=uiautomator2
Suite Teardown  Close Application

*** Test Cases ***
App Presents the Login Page When Launches
    Page Should Contain Element  id=btn_login

Move To Second Screen When Username And Password Are Not Empty
    Input Text  txt_username  user1
    Input Text  txt_password  secret123
    Tap  btn_login
    Wait Until Page Contains  Hello World!  timeout=2

Show Login Failed If Username Or Password IS Empty
    Go Back
    Clear Text  txt_username
    Clear Text  txt_password
    Tap  btn_login
    Wait Until Page Contains Element  xpath=//*[@text="Login Failed!"]
