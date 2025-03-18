*** Settings ***
Documentation    aqui ficarão os passos para a automação da tela de login


Library    SeleniumLibrary
Library    venv/Lib/site-packages/robot/libraries/XML.py

*** Keywords ***
Abrindo navegador
    Open Browser   https://automationpratice.com.br/    chrome

Deve conter na página o title
    Title Should Be     QAZANDO Shop E-Commerce
    Sleep     3s

Deve poder clicar no botão cadastrar
    Wait Until Element Is Visible    xpath=//a[starts-with(normalize-space(text()), "Cadastro")]    30s
    Click Element    xpath=//a[starts-with(normalize-space(text()), "Cadastro")]
    Capture Page Screenshot
    Sleep    5s

Validando Título do Formulário de Cadastro
    Page Should Contain Element    xpath=//h3[contains(.,'Cadastro de usuário')]    Cadastro de usuário
    sleep    3s

Clicando no Botao Cadastrar
     Click Button    xpath=//button[contains(@id,'btnRegister')]
Validando mensagem de campo nome vazio
    Page Should Contain Element     xpath=//span[contains(@id,'errorMessageFirstName')]    O campo nome deve ser prenchido    5s
    Sleep    2s
    

########## Cenário 02 ###################    
    Deve conter na página o title
    Deve poder clicar no botão cadastrar
    Validando Título do Formulário de Cadastro
    Input Text    xpath=//input[contains(@type,'text')]     testando
    Clicando no Botao Cadastrar
Validando mensagem de campo email vazio
    Page Should Contain Element     xpath=//input[contains(@id,'email')]    O campo e-mail deve ser prenchido corretamente    5s
    Sleep    2s
    

########## Cenário 03 ################### 
Preencha o campo Nome
    Input Text    xpath=//input[contains(@type,'text')]     testando
Prencha o campo Email
    Input Text    //input[contains(@id,'email')]     teste@teste.com
                
Validando mensagem de campo senha vazio
    Page Should Contain Element     xpath=//input[contains(@type,'password')]    O campo senha deve ter pelo menos 6 dígitos    5s
Fechando navegador
    Close Browser