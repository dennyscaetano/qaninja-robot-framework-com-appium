*** Settings ***

Resource        ../resources/base.robot  # Importa recursos e keywords do arquivo base.robot

# Executa a Keyword 'Open Session' antes de cada caso de teste, iniciando a sessão do aplicativo
Test Setup      Open Session  

# Executa a Keyword 'Close Session' depois de cada caso de teste, encerrando a sessão do aplicativo
Test Teardown   Close Session  

*** Variables ***
${TOOLBAR_TITLE}        id=io.qaninja.android.twp:id/toolbarTitle  # Armazena o ID do título da barra de ferramentas

*** Test Cases ***
Deve acessar a tela Dialogs  # Teste para validar o acesso à tela Dialogs
    Open Nav  # Abre o menu de navegação

    Click Text                          DIALOGS  # Clica na opção "DIALOGS" no menu
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}  # Aguarda o título da toolbar ser visível
    Element Text Should Be              ${TOOLBAR_TITLE}    DIALOGS  # Verifica se o título da tela é "DIALOGS"

Deve acessar a tela de Formulários  # Teste para validar o acesso à tela de formulários
    Open Nav  # Abre o menu de navegação

    Click Text                          FORMS  # Clica na opção "FORMS" no menu
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}  # Aguarda o título da toolbar ser visível
    Element Text Should Be              ${TOOLBAR_TITLE}    FORMS  # Verifica se o título da tela é "FORMS"

Deve acessar a tela de Vingadores  # Teste para validar o acesso à tela dos Vingadores
    Open Nav  # Abre o menu de navegação

    Click Text                          AVENGERS  # Clica na opção "AVENGERS" no menu
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}  # Aguarda o título da toolbar ser visível
    Element Text Should Be              ${TOOLBAR_TITLE}    AVENGERS  # Verifica se o título da tela é "AVENGERS"
