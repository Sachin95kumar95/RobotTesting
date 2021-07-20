*** Settings ***
Suite Setup    log to console    opening Browser
Suite Teardown    log to console    closing Browser

Test Setup    log to console    login to application
Test Teardown    log to console    logout to application

*** Test Cases ***
Tc1 prepaid recharge
    [Tags]    sanity
    log to console    this is prepaid recharge testcase
Tc2 postpaid recharge
    [Tags]    regression
    log to console    this is postpaid recharge testcase
Tc3 search
    [Tags]    sanity
    log to console    this is search testcase
Tc4 advance search
    [Tags]    regression
    log to console    this is advance search test case
