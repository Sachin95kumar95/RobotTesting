*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
scroll page
    open browser    ${url}  ${browser}
    maximize browser window
    #execute javascript    window.scrollTo(0,2500)
    #scroll element into view    id:age
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    sleep   2
    close browser
