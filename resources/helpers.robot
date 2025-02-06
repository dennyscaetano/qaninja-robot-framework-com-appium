*** Settings ***
Documentation       Aqui teremos as Keywords helpers

*** Variables ***
${START}            COMEÇAR  # Texto do botão de início no app
${HAMBURGUER}       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]  # Ícone do menu lateral
${NAV_VIEW}         id=io.qaninja.android.twp:id/navView  # Identificador do menu lateral
@{AVENGERS_LIST}    Capitão América     Thor    Homem de Ferro    Hulk    Homem Aranha  # Lista de Vingadores para seleção

*** Keywords ***
Get Started  # Aguarda e clica no botão de início do app
    Wait Until Page Contains            ${START}  # Aguarda até que o botão esteja visível na tela
    Click Text                          ${START}  # Clica no botão para iniciar

Open Nav  # Abre o menu lateral (hambúrguer)
    Wait Until Element Is Visible       ${HAMBURGUER}  # Aguarda até o botão do menu estar visível
    Click Element                       ${HAMBURGUER}  # Clica no ícone do menu
    Wait Until Element Is Visible       ${NAV_VIEW}  # Aguarda até o menu estar aberto

Go To Login Form  # Navega até a tela de login
    Open Nav  # Abre o menu lateral
    Click Text                  FORMS  # Clica na opção "FORMS"
    Wait Until Page Contains    FORMS  # Aguarda a página carregar
    Click Text                  LOGIN  # Clica na opção "LOGIN"
    Wait Until Page Contains    Fala QA, vamos testar o login?  # Aguarda o texto de login aparecer

Go To Radio Buttons  # Navega até a tela de botões de rádio
    Open Nav  
    Click Text                  INPUTS  # Clica na opção "INPUTS"
    Wait Until Page Contains    INPUTS  
    Click Text                  BOTÕES DE RADIO  # Clica na opção "BOTÕES DE RADIO"
    Wait Until Page Contains    Escolha sua linguagem preferida  # Aguarda o texto da página carregar

Go To Checkbox  # Navega até a tela de checkboxes
    Open Nav  
    Click Text                  INPUTS  
    Wait Until Page Contains    INPUTS  
    Click Text                  CHECKBOX  # Clica na opção "CHECKBOX"
    Wait Until Page Contains    Marque as techs que usam Appium  # Aguarda a página carregar

Go To Short Click  # Navega até a tela de clique simples
    Open Nav  
    Click Text                  BOTÕES  
    Wait Until Page Contains    BOTÕES  
    Click Text                  CLIQUE SIMPLES  # Clica na opção "CLIQUE SIMPLES"
    Wait Until Page Contains    Botão clique simples  # Aguarda a tela de clique simples carregar

Go To Long Click  # Navega até a tela de clique longo
    Open Nav  
    Click Text                  BOTÕES  
    Wait Until Page Contains    CLIQUE LONGO  
    Click Text                  CLIQUE LONGO  # Clica na opção "CLIQUE LONGO"
    Wait Until Page Contains    Botão clique longo  # Aguarda a tela carregar

Go To SignUp Form  # Navega até a tela de cadastro
    Open Nav  
    Click Text                  FORMS  
    Wait Until Page Contains    FORMS  
    Click Text                  CADASTRO  # Clica na opção "CADASTRO"
    Wait Until Page Contains    Bem-vindo, crie sua conta.  # Aguarda a tela de cadastro carregar

Go To Avenger List  # Navega até a lista dos Vingadores
    Open Nav  
    Click Text                  AVENGERS  
    Wait Until Page Contains    AVENGERS  
    Click Text                  LISTA  # Clica na opção "LISTA"
    Wait Until Page Contains    LISTA  # Aguarda a tela da lista carregar
