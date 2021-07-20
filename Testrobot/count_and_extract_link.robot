*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/

*** Test Cases ***
count and extract link text
    open browser    ${url}  ${browser}
    #maximize browser window
    ${linkcount}    get element count   xpath://a
    log to console  ${linkcount}
    @{linkitem}    create list
    FOR    ${i}    IN RANGE    1   ${linkcount}+1
        log    ${i}
        ${linktext}=    get text    xpath:(//a)[${i}]
        log to console  ${linktext}
    END