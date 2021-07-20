*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
working with html
    open browser    ${url}  ${browser}
    ${rows}=    get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    log to console  ${rows}
    ${colm}=    get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    log to console  ${colm}
    ${data}=    get text    xpath://*[@id="HTML1"]/div[1]/table
    log to console   ${data}
    #validation
    table column should contain    xpath://tbody/tr/th[4]   4   Price
    #validation
    table cell should contain    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[6]/td[2]   6   2   Amod
    close browser