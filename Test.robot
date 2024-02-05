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
    Input Text    //input[@id='EmailAddress']    sara@gmail.com
    Input Text    //input[@id='FirstName']       sara
    Input Text    //input[@id='LastName']      Ali
    Input Text    //input[@id='City']    Warsw
    Select From List By Label    //select[@id='StateOrRegion']  Georgia
    Click Element    //input[@value='female']
    Press Key    //button[normalize-space()='Submit']    Submit
    Click Button    //button[normalize-space()='Submit']
    Wait Until Page Contains    Success! New customer added.
