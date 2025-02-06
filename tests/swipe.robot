*** Settings ***

Resource            ../resources/base.robot  # Importa recursos e keywords do arquivo base.robot

# Executa a Keyword 'Open Session' antes de cada caso de teste para iniciar a sessão do aplicativo
Test Setup          Open Session  

# Executa a Keyword 'Close Session' depois de cada caso de teste para encerrar a sessão do aplicativo
Test Teardown       Close Session  

# Explicação dos parâmetros de Swipe By Percent:
# start_x - Posição inicial no eixo X (percentual da largura da tela)
# start_y - Posição inicial no eixo Y (percentual da altura da tela)
# end_x - Posição final no eixo X (percentual da largura da tela)
# end_y - Posição final no eixo Y (percentual da altura da tela)
# duration - (opcional) Tempo do movimento de swipe em milissegundos

*** Variables ***
${BTN_REMOVE}=      id=io.qaninja.android.twp:id/btnRemove  # Identificador do botão de remoção do item

*** Test Cases ***
Deve remover o Capitão América  # Teste para remover o personagem Capitão América da lista
    [tags]  removeAvenger  
    Go To Avenger List  # Navega até a lista de Vingadores

    # Realiza um swipe da direita para a esquerda para exibir o botão de remover
    # Baseado em uma tela de 1080x1920 pixels
    # Começa no ponto (93.5%, 18.2%) e termina no ponto (43.5%, 18.2%)
    Swipe By Percent    93.5    18.2    43.5    18.2  

    Wait Until Element Is Visible    ${BTN_REMOVE}  # Aguarda até que o botão de remover esteja visível
    Click Element                    ${BTN_REMOVE}  # Clica no botão de remover
    Wait Until Page Does Not Contain  Capitão América  # Aguarda até que o nome "Capitão América" desapareça da lista
    Sleep    5  # Aguarda 5 segundos antes de encerrar o teste (boa prática: evitar sleep e usar waits)

Deve mover o Hulk para o topo da lista  # Teste para mover o personagem Hulk para o topo da lista
    [tags]  moveHulkToTopList  
    Go To Avenger List  # Navega até a lista de Vingadores

    # Realiza um swipe de baixo para cima para mover o Hulk para o topo da lista
    # Baseado em uma tela de 1080x1920 pixels
    # Começa no ponto (6.5%, 63.0%) e termina no ponto (6.5%, 15.6%)
    Swipe By Percent    6.5    63.0    6.5    15.6  

    # Verifica se os personagens ainda estão visíveis na lista
    Text Should Be Visible    Hulk  
    Text Should Be Visible    Capitão América  
    Text Should Be Visible    Thor  
    Text Should Be Visible    Homem de Ferro  
    Text Should Be Visible    Homem Aranha  

    Sleep    5  # Aguarda 5 segundos antes de encerrar o teste
