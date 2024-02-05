*** Settings ***

Documentation    test for selenium.com
Library    SeleniumLibrary
*** Test Cases ***
Testa Login funktionalitet for automationPlayground
    [Documentation]    Test visar posive login scenarion för automationPlayground
    Set Selenium Speed    1    #används för att styra hastighet
    Open Browser    browser=Chrome
    Go To   https://automationplayground.com/crm/
    Click Link    //a[@id='SignIn']
    Input Text  xpath = //input[@id='email-id']  amrimukh2@gmail.com
    #Click Button    //button[@title='Login to continue']
    Input Password  xpath = //input[@id='password']    12345
    Click Button    //button[@id='submit-id']
    Wait Until Page Contains    Our Happy Customers
    #Capture Page Screenshot
    Click Link    //a[@id='new-customer']







