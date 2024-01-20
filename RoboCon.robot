*** Settings ***
Force Tags          BID-REQ-001    BID-REQ-003    BID-REQ-005

Documentation       This is an example test suite of Homepage Feature of Demo App

Library     SeleniumLibrary

Suite Setup         Run Keywords    Init Test Settings    AND    Open Browser    ${URL}    Chrome
Suite Teardown      Run Keyword    Close Browser

*** Variables ***
${URL}    https://www.seznam.cz/

*** Keywords ***
Init Test Settings
    Set Selenium Timeout    30 seconds

Verify That Custom Element Is Located On The Page
    Page Should Contain Element    //div[@class="i-am-not-there"]    1s

Verify That Page Contains Subheading
    Wait Until Page Contains Element    //div[@class="content"]    5s

*** Test Cases ***
User Can See Home Page Screen Navigation Menu
    [Documentation]    Open Testing Page and verify that it contains all mandatory elements
    Verify That Page Contains Subheading

Verify That Home Page Contains Custom Element
    [Documentation]    Failing test case to demonstrate how it will look like in the report
    Verify That Custom Element Is Located On The Page
