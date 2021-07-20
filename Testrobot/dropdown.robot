*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
handling drop down and list
    open browser    ${url}  ${browser}
    maximize browser window
    #set selenium speed  3second
    select from list by label   continents  South America
    select from list by index   continents  3
    select from list by label   selenium_commands   Wait Commands
    select from list by index   selenium_commands   3
    unselect from list by index    selenium_commands    3
    select from list by index   selenium_commands   4
