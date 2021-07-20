*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${browser}  chrome
${url1}     http://demowebshop.tricentis.com/register
${url2}     https://demo.nopcommerce.com/

*** Test Cases ***
close browser
    open browser    ${url1}   ${browser}
    maximize browser window
    sleep   2
    open browser    ${url2}   ${browser}
    close all browsers

