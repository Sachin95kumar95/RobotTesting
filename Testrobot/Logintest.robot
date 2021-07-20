*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variable ***
${browser}    chrome
${siteurl}    http://newtours.demoaute.com/
${user}    tutorial
${password}    tutorial

*** Test Cases ***
Logintest
    open my browser    ${siteurl}    ${browser}
    Enter user name    ${user}
    Enter user password    ${password}
    click signin
    verify successfully login
    Close my window

