*** Settings ***




*** Keywords ***

Deve conter o title title do site 
    Title Should Be     QAZANDO Shop E-Commerce
    Sleep    3s



################################## Cenário 02 ##################################
Aguardar o elemeto de texto clicável ficar visível
    Wait Until Element Is Visible    xpath=//a[@href='/register'][contains(.,'Cadastro')]    10s
    Sleep    3s

Deve poder clicar no texto clicável {cadastro}
    Click Element    xpath=//a[@href='/register'][contains(.,'Cadastro')]
    Sleep    3s

Validando se a tela é a correta Título da tela cadastro_de_usuario
    Wait Until Element Contains    xpath=//h3[contains(.,'Cadastro de usuário')]

Aguardar o elemento do campo Nome ficar visível
    Wait Until Element Is Visible    xpath=//input[contains(@type,'text')]    10s

Deve poder digitar no campo Nome
    Input Text    xpath=//input[contains(@type,'text')]     Automação
    Sleep    3s

