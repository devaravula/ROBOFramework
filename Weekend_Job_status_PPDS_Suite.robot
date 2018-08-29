*** Settings ***
Library           Selenium2Library
Library           DatabaseLibrary
Library           pygments
Library           String
Library           Collections
Library           DateTime
Library           OperatingSystem

*** Test Cases ***
Job status TC1
    Open Browser    http://10.117.76.1/PPDSWeb/Login.aspx    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id=ctl00_loginControls_txtUserName
    Input Text    id=ctl00_loginControls_txtUserName    test.developer
    Input Text    id=ctl00_loginControls_txtPassword    Password1
    Click Button    id=ctl00_loginControls_btnSubmit
    Sleep    8
    Wait Until Element Is Visible    id=ctl02_hypLogOut
