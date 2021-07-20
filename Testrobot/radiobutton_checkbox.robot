*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing with radio button and check box
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2second
    select radio button     sex     Female
    select radio button     exp     5
    select checkbox     oolongtea
    select checkbox     RedTea
    unselect checkbox       oolongtea

