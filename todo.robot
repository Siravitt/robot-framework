*** Settings ***

Library    SeleniumLibrary

Resource    variables.robot

Resource    keywords.robot

Test Teardown    Close All Browsers

*** Test Cases ***

Test-Todo-List
    Open Web    ${URL}    ${BROWSER}
    Add Todo    ${PATH_INPUT}
    Element Should Contain    ${PATH_LIST}    Hello world
    Check Todo    //*[@id="root"]/main/ul/li/div/input
    Delete Todo    ${PATH_LIST}    ${DELETE_BTN}
    Capture Page Screenshot
