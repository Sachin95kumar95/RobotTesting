*** Settings ***
Library    SeleniumLibrary
Suite Setup    opening my browser
Suite Teardown    closing my browser
*** Variable ***
${browser}    chrome
${url}    http://demowebshop.tricentis.com/login
*** Keywords ***
opening my browser
    open browser    ${url}    ${browser}
closing my browser
    close browser
*** Test Cases ***
Tc1
    input text    id:Email    admin@yourstore.com
    input text    id:Password   admin
    click element    xpath://body/div[4]/div[1]/div[4]/div[2]/div[1]/div[2]/div[1]/div[2]/div[2]/form[1]/div[5]/input[1]
