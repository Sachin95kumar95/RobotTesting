*** Test Cases ***
for loop 1
     FOR    ${i}    IN    1  2  3  4  5  6  7  8  9
        LOG TO CONSOLE    ${i}
     END
for loop 2
    @{ITEM}    create list    1 2 3 4 5 6
    FOR    ${i}    IN    @{ITEM}
        log to console    ${i}
    END