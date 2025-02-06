*** Settings ***

Resource        ../resources/base.robot  # Importa os recursos e keywords do arquivo base.robot

Test Setup      Open Session  # Antes de cada teste, inicia a sessão do aplicativo
Test Teardown   Close Session  # Após cada teste, encerra a sessão do aplicativo

*** Test Cases ***
Deve marcar a opção Robot Framework  # Teste para validar a seleção de um checkbox
    Go To CheckBox  # Navega até a tela de checkboxes

    ${element}=     Set Variable        xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]  
    # Armazena o seletor do checkbox com o texto 'Robot Framework' na variável ${element}

    Click Element                       ${element}  # Clica na opção do checkbox
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/rvContainer  # Aguarda a visibilidade da lista de checkboxes
    Element Attribute Should Match      ${element}    checked    true  
    # Verifica se o checkbox está marcado, conferindo se o atributo "checked" é verdadeiro
