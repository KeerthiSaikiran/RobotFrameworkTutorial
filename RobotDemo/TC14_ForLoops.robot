*** Test Cases ***
#For IN Range
ForLoop
    FOR    ${counter}    IN RANGE    1    10    2
        Log To Console  ${counter}

    END

ForLoopList
#For IN
    @{List}     Create List     1   2   3   4   5
    FOR    ${element}    IN    @{LIST}
        Log To Console   ${element}

    END


ForLoopCondition
#For IN
    @{List}     Create List     1   2   3   4   5
    FOR    ${element}    IN    @{LIST}
        Exit For Loop If    '${element}' == 3
        Log To Console    ${element}
         
    END
    
    
ForLoopString
    @{LIST}     Create List     a   b   c   d   e
    FOR    ${element}    IN    @{LIST}
        Exit For Loop If    '${element}' == 'c'
        Log To Console    ${element}
         
    END