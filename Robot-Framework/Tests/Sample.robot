*** Settings ***

Documentation  Opening of Application User Interface Log In Page
Library  Selenium2Library
Library  OperatingSystem



*** Variables ***

*** Test Cases ***

User must sign in to check out

    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    Open Browser  http://beta-dot-datatest-148118.appspot.com/#!/login  chrome
    Wait Until Page Contains  LI for Marketing
    Input text  name=email  neha.setia@pb.com
    Input text  name=pwd  Test@123
    sleep  3s
    Click button  xpath=//BUTTON[@class='btn btn-primary btn-block btn-lg spacer-top-xs btn-pill']
    sleep  12s
    Click Element  xpath=//SPAN[text()='Upload your customer data for better insights']
    sleep  5s
    Click Element  xpath=(//SPAN[@class='control-indicator'])[1]
    sleep  3s
    Choose File  id=fileUpload  C:\\Users\\nex4vgv\\Desktop\\TestData_upload\\Canada.csv


*** Keywords ***