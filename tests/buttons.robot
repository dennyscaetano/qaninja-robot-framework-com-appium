*** Settings ***
Resource        ../resources/base.robot  # Importa recursos e keywords do arquivo base.robot

Test Setup      Open Session  # Antes de cada teste, inicia a sessão do aplicativo
Test Teardown   Close Session  # Após cada teste, encerra a sessão do aplicativo

*** Test Cases ***
Deve realizar um clique simples  # Teste para validar um clique simples
    [tags]  short  # Tag para identificar e filtrar este teste
    Go To Short Click  # Navega até a tela de clique simples

    Click Element                   id=io.qaninja.android.twp:id/short_click  # Realiza um clique no botão
    Wait Until Page Contains        Isso é um clique simples  # Aguarda o texto indicando sucesso na ação

Deve realizar um clique looooooooooongo  # Teste para validar um clique longo
    [tags]  long  # Tag para identificar e filtrar este teste
    Go To Long Click  # Navega até a tela de clique longo

    Long Press                      id=io.qaninja.android.twp:id/long_click    1000  # Mantém o clique pressionado por 1 segundo (1000 ms)
    Wait Until Page Contains        CLIQUE LONGO OK  # Aguarda o texto indicando sucesso na ação
