*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}      Chrome
${url}      https://demo.nopcommerce.com/
*** Test Cases ***
TESTING INPUT BOX
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath://a[contains(text(),'Log in')]
    ${email_txt}    set variable    id:Email
    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    input text  ${email_txt}    abc@gmail.com
    sleep   3
    clear element text   ${email_txt}
    sleep   3
    close browser

