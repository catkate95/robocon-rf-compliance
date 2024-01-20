*** Settings ***
Force Tags          BID-REQ-002

Documentation       This is an example test set for showing test report structure

Library     SeleniumLibrary

Suite Setup         Run Keywords    Init Test Settings    AND    Open Browser    ${URL}    Chrome
Suite Teardown      Run Keyword    Close Browser

*** Variables ***
${URL}    https://www.seznam.cz/

*** Keywords ***
Init Test Settings
    Set Selenium Timeout    30 seconds



*** Test Cases ***
A Main Page Of Seznam Opens
    [Documentation]    Open Seznam page and verify that the component is rendered
    Wait Until Page Contains Element    //div[@class="content"]    5s
