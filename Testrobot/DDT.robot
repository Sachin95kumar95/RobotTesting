*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/login_resources.robot

Suite Setup    open my browser
Suite Teardown    close my browser


*** Test Cases ***
Right user empty password
    invalid login   admin@yourstore.com     ${EMPTY}
Right user wrong password
    invalid login   admin@yourstore.com     abc
wrong user right password
    invalid login   adm@gmail.com    admin
wrong user empty password
    invalid login   adm@gmail.com    ${empty}
wrong user wrong password
    invalid login   adm@gmail.com   xyz

*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input user    ${username}
    input password    ${password}
    click login button
    ERROR massage







