*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjectmodel/Locator.py

*** Keywords ***
Open my browser
    [Arguments]    ${siteurl}    ${browser}
    open browser    ${siteurl}    ${browser}
    maximize browser window
Enter user name
    [Arguments]    ${username}
    input text    ${txt_loginuser}
Enter user password
    [Arguments]    ${password}
    input text    ${txt_loginpassword}
Click signin
    click button    ${btn_signin}
verify successfully login
    title should be    find a flight:Mercury Toure
Close my window


