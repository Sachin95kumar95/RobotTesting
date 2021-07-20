*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
user def keyword with arguments
    launchbrowser   ${url}  ${browser}
    input text    id:Email    sachin123456@gmail.com
    input text    id:Password    123456
*** Keywords ***
launchbrowser
    [Arguments]    ${a}    ${b}
    open browser    ${a}    ${b}
    maximize browser window

