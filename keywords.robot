*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Open Web
    [Arguments]    ${url}    ${browser}
    ## option for run headless chrome
    Open Browser    ${url}    ${browser}    options=add_argument("--headless")
    # Open Browser    ${url}    ${browser}

Add Todo
    [Arguments]    ${path}
    Wait Until Element Is Enabled    ${path}
    Input Text    ${path}    Hello world
    Press Keys    ${path}    ENTER

Check Todo
    [Arguments]    ${path}
    Click Element    ${path}

Delete Todo
    [Arguments]    ${path1}    ${path2}
    Mouse Over    ${path1}
    Wait Until Element Is Visible    ${path2}
    Click Button    ${path2}