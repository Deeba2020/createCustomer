*** Settings ***

Documentation    test for selenium.com
Library    SeleniumLibrary
Suite Setup     setup


*** Variables ***
${username}    amrimukh2@gmail.com
${password}     12345
${url}      https://automationplayground.com/crm/

${customer}     id:new-customer
${email}    //input[@id='EmailAddress']
${first_name}   //input[@id='FirstName']
${last_name}    //input[@id='LastName']
${city}     //input[@id='City']

*** Test Cases ***
BDD test
    when Customer logs in
    and He logs in
    then Create a new customer
    and Check the customer is created

*** Keywords ***
setup
    Set Selenium Speed    1    #används för att styra hastighet
    Open Browser    browser=Chrome
    Go To   ${url}

when Customer logs in
    [Documentation]     goto login page
    [Tags]      login
    Click Link    //a[@id='SignIn']

and He logs in
    [Documentation]     customer types credentials
    [Tags]      login
    Input Text      //input[@id='email-id']     ${username}
    Input Password     //input[@id='password']      ${password}
    Click Button    //button[@id='submit-id']
    Wait Until Page Contains    Our Happy Customers

then Create a new customer

    [Documentation]     creating new customer
    [Tags]      create customer
    Click Link    ${customer}
    Input Text    ${email}      sara@gmail.com
    Input Text    ${first_name}      sara
    Input Text    ${last_name}      Ali
    Input Text    ${city}    Warsw
    Select From List By Label    //select[@id='StateOrRegion']  Georgia
    Click Element    //input[@value='female']
    Press Key    //button[normalize-space()='Submit']    Submit
    Click Button    //button[normalize-space()='Submit']


and Check the customer is created
     Wait Until Page Contains    Success! New customer added.
