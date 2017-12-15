*** Settings ***

Documentation  Opening of Application User Interface Log In Page and Running of Whole Flow
Library  Selenium2Library
Library  OperatingSystem



*** Variables ***

*** Test Cases ***

User must sign in to view the application

    [Documentation]  Sign In Complete Flow and Status Code 200
    [Tags]  Smoke
    Open Browser  http://beta-dot-datatest-148118.appspot.com/#!/login  chrome
    Wait Until Page Contains  LI for Marketing
    Input text  name=email  demo@pb.com
    Input text  name=pwd  pbdemobeta
    sleep  3s
    Click button  xpath=//BUTTON[@class='btn btn-primary btn-block btn-lg spacer-top-xs btn-pill']
    #Wait Until Page Contains  Welcome to Retail Analytics and Marketing insights dashboard !
    sleep  10s
    Click button  xpath=//BUTTON[@id='modalSearch']
    sleep  10s
    Click Element  xpath=//li[contains(text(),' Orders By Category')]
    sleep  9s
    Click Element  xpath=//li[contains(text(),' Avg Time Between Orders')]
    sleep  9s
    Click Element  xpath=//li[contains(text(),' Average Order Size')]
    sleep  9s
    Click Element  xpath=//li[contains(text(),' Order By Price')]
    sleep  9s
    Click Element  xpath=(//SPAN[@uib-accordion-header=''])[2]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[7]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[8]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[9]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[10]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[11]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[12]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[13]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='filter in group.filterList'])[8]
    sleep  9s
    Click Element  xpath=(//SPAN[@uib-accordion-header=''])[3]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='k in groups[2].filterList'])[1]
    sleep  14s
    Click Element  xpath=(//LI[@ng-repeat='k in groups[2].filterList'])[2]
    sleep  7s
    Click Element  xpath=(//SPAN[@uib-accordion-header=''])[4]
    sleep  9s
    Click Element  xpath=(//LI[@ng-repeat='(k,v) in audienceUsecases | audienceFilter:audienceFilterKey'])[1]




*** Keywords ***