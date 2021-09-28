*** Settings ***
Library     app.py

*** Test Cases ***

Deve retornar mensagem de boas vindas
    ${result}=          welcome     Luzia
    Should Be Equal     ${result}   Olá Luzia, Bem vindo ao curso básico de Robot Framework!

