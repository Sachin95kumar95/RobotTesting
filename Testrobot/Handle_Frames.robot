*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${browser}    chrome
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/package-summary.html

*** Test Cases ***
handle frames
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1second
    select frame    xpath://body/main[1]/div[1]/div[1]/div[1]/iframe[1]
    click link    org.openqa.selenium.cli
    unselect frame
    select frame    xpath:/html/body/main/div/div[1]/div[2]/iframe
    click link    CliCommand
    unselect frame
    select frame    classFrame
    click link    Help

    close browser

