*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/
*** Test Cases ***
logintest
    open browser    ${url}  ${browser}
    maximize browser window
    LoginToApplication
    close browser
*** Keywords ***
LoginToApplication
    click link    xpath://a[contains(text(),'Log in')]
    input text    id:Email    abc@gmail.com
    input text    id:Password     test123
    click element    xpath://button[contains(text(),'Log in')]
    sleep    5

