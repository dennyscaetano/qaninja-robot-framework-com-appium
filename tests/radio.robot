*** Settings ***

Resource        ../resources/base.robot  # Importa recursos e keywords do arquivo base.robot

# Executa a Keyword 'Open Session' antes de cada caso de teste, iniciando a sessão do aplicativo
Test Setup      Open Session  

# Executa a Keyword 'Close Session' depois de cada caso de teste, encerrando a sessão do aplicativo
Test Teardown   Close Session  

*** Test Cases ***
Deve selecionar a opção Python  # Teste para validar a seleção do botão de rádio "Python"
    Go To Radio Buttons  # Navega até a tela de botões de rádio

    ${element}=     Set Variable        xpath=//android.widget.RadioButton[contains(@text, 'Python')]  
    # Armazena o elemento do botão de rádio "Python" usando um localizador XPath

    Click Element                       ${element}  # Clica no botão de rádio "Python"
    Wait Until Element Is Visible       ${element}  # Aguarda até que o botão de rádio fique visível
    Element Attribute Should Match      ${element}    checked    true  # Verifica se o botão foi marcado corretamente
