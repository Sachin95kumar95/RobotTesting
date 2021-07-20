*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
user def keyword with arguments
    launchbrowser

*** Keywords ***
launchbrowser
    open browser    ${url}  ${browser}
    maximize browser window
