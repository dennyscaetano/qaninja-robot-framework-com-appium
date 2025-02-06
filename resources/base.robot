*** Settings ***
Library     AppiumLibrary  # Importa a biblioteca AppiumLibrary para automação de testes mobile
# Library     libs/extend.py  # Biblioteca comentada, possivelmente para futuras extensões
Resource    helpers.robot  # Importa recursos adicionais definidos no arquivo helpers.robot

*** Keywords ***
Open Session  # Abre uma nova sessão no aplicativo
    Set Appium Timeout      5  # Define um tempo limite de 5 segundos para comandos do Appium
    Open Application        http://localhost:4723/wd/hub  # Conecta ao servidor Appium
    ...                     automationName=UiAutomator2  # Define o motor de automação para Android
    ...                     platformName=Android  # Especifica o sistema operacional do dispositivo
    ...                     deviceName=Android Emulator  # Define o nome do dispositivo emulado
    ...                     app=${EXECDIR}/app/twp.apk  # Define o caminho do APK do aplicativo a ser testado
    Get Started  # Chama uma keyword (presumidamente definida em helpers.robot) para iniciar o teste

Close Session  # Encerra a sessão do aplicativo
    Capture Page Screenshot  # Tira um print da tela atual antes de fechar a aplicação
    Close Application  # Fecha o aplicativo testado
