*** Settings ***

Library     AppiumLibrary  # Importa a biblioteca AppiumLibrary para automação de testes mobile

*** Test Cases ***
Deve abrir a tela principal  # Teste para validar a abertura do aplicativo
    Open Application    http://localhost:4723/wd/hub  
    ...                 automationName=UiAutomator2  
    ...                 platformName=Android  
    ...                 deviceName=Android Emulator  
    ...                 app=${EXECDIR}/app/twp.apk  
    # Abre o aplicativo no emulador Android, utilizando o Appium Server local e a automação UiAutomator2

    Wait Until Page Contains        Training Wheels Protocol        5  
    # Aguarda até 5 segundos para verificar se o texto "Training Wheels Protocol" está presente na tela
    
    Wait Until Page Contains        Mobile Version  
    # Aguarda a presença do texto "Mobile Version" na tela, garantindo que a página carregou corretamente

    Close Application  # Fecha o aplicativo após a verificação
