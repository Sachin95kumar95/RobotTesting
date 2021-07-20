*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
double click
    open browser    ${url}  ${browser}
    maximize browser window
    drag and drop   id:draggable    id:droppable
    sleep   2
    close browser