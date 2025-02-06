*** Settings ***

Resource        ../resources/base.robot  # Importa recursos e keywords do arquivo base.robot

# Executa a Keyword 'Open Session' antes de cada caso de teste, iniciando a sessão do aplicativo
Test Setup      Open Session  

# Executa a Keyword 'Close Session' depois de cada caso de teste, encerrando a sessão do aplicativo
Test Teardown   Close Session  

*** Variables ***
${SPINNER}=         id=io.qaninja.android.twp:id/spinnerJob  # Identificador do elemento de seleção de cargo
${LIST_OPTIONS}=    class=android.widget.ListView  # Identificador da lista de opções disponíveis

*** Test Cases ***
Deve selecionar o perfil QA no formulário de cadastro  # Teste para selecionar a opção "QA" no cadastro
    Go To SignUp Form  # Navega até a tela de cadastro
    Choice Job  QA  # Chama a Keyword para selecionar o cargo "QA"

Deve selecionar o perfil DevOps no formulário de cadastro  # Teste para selecionar a opção "DevOps" no cadastro
    Go To SignUp Form  # Navega até a tela de cadastro
    Choice Job  DevOps  # Chama a Keyword para selecionar o cargo "DevOps"

*** Keywords ***
Choice Job  # Keyword para selecionar uma opção na lista de cargos
    [Arguments]     ${target}  # Define um argumento para receber o cargo desejado

    Click Element                   ${SPINNER}  # Clica no spinner para exibir as opções
    Wait Until Element Is Visible   ${LIST_OPTIONS}  # Aguarda até que a lista de opções esteja visível
    Click Text                      ${target}  # Clica no cargo desejado passado como argumento
