*** Variables ***
@{Names}    Alice    Bob    Charlie
@{pass}    123    123    123

*** Test Cases ***
Print Names
    FOR    ${name}    IN    @{Names}
       log to console    ${name}
    END

*** Test Cases ***
Print Numbers
    FOR    ${i}    IN RANGE    1    5
        log to console    ${i}
    END

*** Test Cases ***
Nested Loop Example
    FOR    ${i}    IN RANGE    1    3
        FOR    ${j}    IN RANGE    1    3
            log to console    ${i} and ${j}
        END
    END

*** Test Cases ***
Nested Loop Example1
    FOR    ${i}    IN RANGE    1    2
        FOR    ${j}    IN RANGE    1    3
            log to console    @{names} and ${pass}
        END
    END
