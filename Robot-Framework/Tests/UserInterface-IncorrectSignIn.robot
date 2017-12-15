*** Settings ***

Documentation  Opening of Application User Interface Log In Page (Incorrect SignIn)
Library  Selenium2Library
Library  OperatingSystem



*** Variables ***

*** Test Cases ***

User must sign in to check out

    [Documentation]  Incorrect Sign
    [Tags]  Smoke
    Open Browser  http://beta-dot-datatest-148118.appspot.com/#!/login  chrome
    Maximize Browser Window
    ${Window1Title}=  Get Title
    Wait Until Page Contains  LI for Marketing
    Input text  name=email  demo@pb.com
    Input text  name=pwd  pbdemobetaa
    Click button  xpath=//BUTTON[@class='btn btn-primary btn-block btn-lg spacer-top-xs btn-pill']
    Wait Until Page Contains  Welcome to Retail Analytics and Marketing insights dashboard !


*** Keywords ***