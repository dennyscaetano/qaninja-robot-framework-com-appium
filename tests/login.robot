*** Settings ***

Resource    ../resources/base.robot  # Importa recursos e keywords do arquivo base.robot

Test Setup      Open Session  # Antes de cada teste, inicia a sessão do aplicativo
Test Teardown   Close Session  # Após cada teste, encerra a sessão do aplicativo

*** Test Cases ***
Deve logar com sucesso  # Teste para validar o login no aplicativo
    Go To Login Form  # Navega até a tela de login

    Input Text                  id=io.qaninja.android.twp:id/etEmail        eu@papito.io  
    # Insere o e-mail no campo de entrada de texto

    Input Text                  id=io.qaninja.android.twp:id/etPassword     qaninja  
    # Insere a senha no campo de entrada de texto

    Click Element               id=io.qaninja.android.twp:id/btnSubmit  
    # Clica no botão de login para enviar as credenciais

    Wait Until Page Contains    Show! Suas credenciais são validas.  
    # Aguarda a mensagem de sucesso confirmando que o login foi realizado corretamente
