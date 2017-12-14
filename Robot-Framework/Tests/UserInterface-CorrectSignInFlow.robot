*** Settings ***

Documentation  Opening of Application User Interface Log In Page and Select the brand.
Library  Selenium2Library
Library  OperatingSystem



*** Variables ***

*** Test Cases ***

User must sign in to view the application

    [Documentation]  Sign In Flow and Status Code 200
    [Tags]  Smoke
    Open Browser  http://beta-dot-datatest-148118.appspot.com/#!/login  chrome
    Wait Until Page Contains  LI for Marketing
    Input text  name=email  demo@pb.com
    Input text  name=pwd  pbdemobeta
    sleep  3s
    Click button  xpath=//BUTTON[@class='btn btn-primary btn-block btn-lg spacer-top-xs btn-pill']
    sleep  7s
    Click button  xpath=//BUTTON[@id='modalSearch']



*** Keywords ***