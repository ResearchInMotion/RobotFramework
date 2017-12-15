*** Settings ***

Documentation  Opening of Login Page and Test the functionality of Forgot Password
Library  Selenium2Library
Library  OperatingSystem



*** Variables ***

*** Test Cases ***

User must sign in to view the application

    [Documentation]  Forgot Password Flow
    [Tags]  Smoke
    Open Browser  http://beta-dot-datatest-148118.appspot.com/#!/login  chrome
    sleep  5s
    Click element  xpath=/html/body/div[1]/div/div/div/div/div/p[1]/a   #here the xpath of html works
    sleep  4s
    Input text  name=email  sahil.nagpal@pb.com
    sleep  4s
    Click element  xpath=/html/body/div[1]/div[1]/div/div/div/div[1]/form/button/span
    sleep  10s
    Click element  xpath=/html/body/div[1]/div[1]/div/div/div/div[2]/p[2]/a/span


*** Keywords ***