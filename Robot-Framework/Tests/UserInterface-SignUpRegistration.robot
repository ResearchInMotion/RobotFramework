*** Settings ***

Documentation  Opening of Application User Interface for Sign Up registration.
Library  Selenium2Library
Library  OperatingSystem



*** Variables ***

*** Test Cases ***

User must sign in to check out

    [Documentation]  Sign Up AutoTexting
    [Tags]  Smoke
    Open Browser  http://beta-dot-datatest-148118.appspot.com/#!/login  chrome
    sleep  6s
    #Click link  xpath=(//SPAN[text()='Sign up now'])[1]
    Click Link  \#!/signup
    Wait Until Page Contains  Sign Up
    sleep  3s
    Input text  name=fname  Neha
    sleep  2s
    Input text  name=lname  Setia
    sleep  2s
    Input text  name=email  neha.setia@pb.com
    sleep  2s
    Input text  name=companyName  Yonex
    sleep  2s
    Input text  name=pw  Test@123
    sleep  2s
    Input text  name=confoirmpw  Test@123
    sleep  3s
    Click button  xpath=//BUTTON[@class='btn btn-primary btn-block btn-lg']





*** Keywords ***