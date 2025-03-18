*** Settings ***
Documentation    Aqui ficam as manipulações do navegador

Resource    Packages.resource
Resource    ../Auto/variables/Var_globals.resource

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    $[BROWSER] 

Fechar navegador
    Close Browser