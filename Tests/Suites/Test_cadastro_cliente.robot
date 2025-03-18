*** Settings ***

Resource    ../../SRC/Configs/Hooks.resource
Resource    ../../SRC/Auto/Pages/Page.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador


*** Test Cases ***

Cenário de teste 01: Validando Home page
    [Tags]    Validar_title_da_page
    Deve conter o title title do site


Cenário de teste 02: Cadastro de usuários com dados válidos
... [Tags]   Cadastro_usuario_dados_validos
...# Deve conter o title do site
Aguardar o elemeto de texto clicável ficar visível
Deve poder clicar no texto clicável {cadastro}
Validando se a tela é a correta Título da tela cadastro_de_usuario
Aguardar o elemento do campo Nome ficar visível
Deve poder digitar no campo Nome
Deve poder digitar no campo E-mail
Deve poder digitar no campo Senha
Deve poder clicar no campo {cadastrar}
Deve validar o sucesso do cadstro
