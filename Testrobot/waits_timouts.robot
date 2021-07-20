*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
registration
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1second
    select radio button     Gender    M
    input text  id:FirstName    sachin
    input text  id:LastName     kumar
    input text  id:Email    abc@gmail.com
    input text  id:Password     123456
    input text  id:ConfirmPassword      123456
    ${speed}=   get selenium speed
    log to console  ${speed}