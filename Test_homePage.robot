*** Settings ***
Documentation    aqui ficarão os passos para a automação da tela de login

Test Setup    Abrindo navegador
resource    Page_homePage.resource

Test Teardown    Fechando navegador

*** Test Cases ***
Cenário de teste 01: validando mensagem de campo nome vazio
    [Tags]    validando_campo_nome_vazio
        Deve conter na página o title
        Deve poder clicar no botão cadastrar
        Validando Título do Formulário de Cadastro
        Clicando no Botao Cadastrar
        Validando mensagem de campo nome vazio
    
Cenário de teste 02: Validando mensagem de campo Email vazio
    [Tags]    validando_campo_email_vazio
    Validando mensagem de campo email vazio

Cenário de teste 03: Validando mensagem de campo senha vazio
    [Tags]    validando_campo_senha_vazio
        Deve conter na página o title
        Deve poder clicar no botão cadastrar
        Validando Título do Formulário de Cadastro
        Preencha o campo Nome
        Prencha o campo Email
        Clicando no Botao Cadastrar
        Validando mensagem de campo senha vazio