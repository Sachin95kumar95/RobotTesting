*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handle_alert
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed  2second
    click element   xpath://button[contains(text(),'Click Me')]
    handle alert    accept
    close browser
