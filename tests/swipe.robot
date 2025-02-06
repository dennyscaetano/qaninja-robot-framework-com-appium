***Settings***

Resource            ../resources/base.robot

Test Setup          Open Session
Test Teardown       Close Session

# start_x - x-percent at which to start
# start_y - y-percent at which to start
# end_x - x-percent distance from start_x at which to stop
# end_y - y-percent distance from start_y at which to stop
# duration - (optional) time to take the swipe, in ms.

***Variables***
${BTN_REMOVE}=      id=io.qaninja.android.twp:id/btnRemove

***Test Cases***
Deve remover o Capitão América
    [tags]  removeAvenger
    Go To Avenger List
    # Start Swipe
    # Tela de 1080 x 1920px = X 1010x sobre 1080px equivale a = 93.5%  => Horizontal
    # Tela de 1080 x 1920px = Y 350px sobre 1920px equivale a = 18.2%  => Vertical

    # End Swipe
    # Tela de 1080 x 1920px = X 470px sobre 1080px equivale a = 43.5%  => Horizontal
    # Tela de 1080 x 1920px = Y 350px sobre 1920px equivale a = 18.2%  => Vertical

    Swipe By Percent    93.5    18.2    43.5    18.2
    Wait Until Element Is Visible           ${BTN_REMOVE}
    Click Element                           ${BTN_REMOVE}
    Wait Until Page Does Not Contain        Capitão América
    Sleep                           5

Deve mover o Hulk para o topo da lista
    [tags]  moveHulkToTopList
    Go To Avenger List
    # Start Swipe
    # Tela de 1080 x 1920px = X 70px sobre 1080px equivale a = 6.5%  => Horizontal
    # Tela de 1080 x 1920px = Y 1210px sobre 1920px equivale a = 63.0%  => Vertical

    # End Swipe
    # Tela de 1080 x 1920px = X 70px sobre 1080px equivale a = 6.5%  => Horizontal
    # Tela de 1080 x 1920px = Y 300px sobre 1920px equivale a = 15.6%  => Vertical
    Swipe By Percent    6.5    63.0    6.5    15.6
    Text Should Be Visible    Hulk
    Text Should Be Visible    Capitão América
    Text Should Be Visible    Thor
    Text Should Be Visible    Homem de Ferro
    Text Should Be Visible    Homem Aranha
    Sleep               5