*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    http://demowebshop.tricentis.com/login

*** Keywords ***
open my browser
    open browser    ${url}    ${browser}
    maximize browser window
close my browser
    close browser
input user
    [Arguments]    ${username}
    input text    id:Email    ${username}
input password
    [Arguments]    ${password}
    input text    id:Password    ${password}
click login button
    click element    xpath://body/div[4]/div[1]/div[4]/div[2]/div[1]/div[2]/div[1]/div[2]/div[2]/form[1]/div[5]
ERROR massage
    page should contain    Login was unsuccessful

