*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
screen shot
    open browser    ${url}  ${browser}
    maximize browser window
    capture element screenshot    xpath://*[@id="header-inner"]/div[1]/h1   C://Users/sachin/PycharmProjects/pythonProject3/my_screenshot.png

    capture page screenshot    C://Users/sachin/PycharmProjects/pythonProject3/my_screenshot2.png
    close browser