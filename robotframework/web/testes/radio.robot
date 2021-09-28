***Settings***
Resource       base.robot

Test Setup     Nova sessão   
Test Teardown  Encerra sessão

***Test Cases***

Selecionando por id
    Open Browser                    ${url}/radios
    Select Radio Button             movies          cap
    Radio Button Should Be Set To   movies          cap
    Sleep                           5s
    Close Browser

Selecionando por value
    Open Browser                    ${url}/radios
    Select Radio Button             movies          guardians
    Radio Button Should Be Set To   movies          guardians
    Sleep                           5s
    Close Browser