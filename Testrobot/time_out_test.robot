*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
registration
    ${speed}=   get selenium timeout
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium timeout  10second
    wait until page contains    Registration

    select radio button     Gender    M
    input text  id:FirstName    sachin
    input text  id:LastName     kumar
    input text  id:Email    abc@gmail.com
    input text  id:Password     123456
    input text  id:ConfirmPassword      123456
    ${speed}=   get selenium timeout
    log to console  ${speed}