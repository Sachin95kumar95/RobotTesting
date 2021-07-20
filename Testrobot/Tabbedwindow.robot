*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${browser}  chrome
${url1}  http://demo.automationtesting.in/Windows.html
${url2}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
tab window test
    open browser    ${url1}    ${browser}
    sleep   2
    open browser    ${url2}    ${browser}
    switch browser    1
    ${title}=   get title
    log to console    ${title}
    sleep   2
    switch browser    2
    ${title}=   get title
    log to console    ${title}
    close all browsers