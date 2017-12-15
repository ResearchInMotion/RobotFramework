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
    sleep  6s
    #Click link  xpath=(//SPAN[text()='Sign up now'])[1]
    #Click Link  \#!/signup
    Click element  xpath=/html/body/div[1]/div/div/div/div/div/p[1]/a   #here the xpath of html works

*** Keywords ***