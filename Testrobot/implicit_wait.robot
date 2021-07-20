*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
registration
    ${implicit wait}=   get selenium implicit wait
    log to console  ${implicit wait}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium implicit wait  10second

    select radio button     Gender    M
    input text  id:FirstName    sachin
    input text  id:LastName     kumar
    input text  id:Email    abc@gmail.com
    input text  id:Password     123456
    input text  id:ConfirmPassword      123456
    ${implicit_wait}=   get selenium implicit wait
    log to console  ${implicit_wait}