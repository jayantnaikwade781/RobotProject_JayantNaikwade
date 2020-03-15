*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside TestSuit Setup
Suite Teardown  Log    I am inside TestSuit Teardown
Test Setup    Log    I am inside Test Setup       
Test Teardown    Log    I am inside Test Teardown    
 # Default Tag given to Test Suit
Default Tags    sanity

    
*** Test Cases ***
MyFirsrtTest
    [Tags]    smoke
    Log    Hello World....
    
MySecondTest
    Log    I am in 2nd Test....
    Set Tags    Regression1
    Remove Tags   Regression1 
    
MyThirdTest
    Log    I am in 3rd Test....
      
# FirstSeleniumTest  
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Maximize Browser Window 
    # Input Text    name=q            Automation step by step 
    # Press Keys    name=q    ENTER
    # # Click Button    name=btnK    
    # Sleep    2       
    # Close Browser
    # Log    Test Completed
    

# SampleLoginTest
    # [Documentation]    THis is a sample Login Test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5  
    # Maximize Browser Window
    # # User Key Words
    # LoginKW
    # Sleep    2      
    # Click Element    id=welcome
    # Sleep    2  
    # Click Element    link=Logout    
    # Sleep    2     
    # Close Browser
    # Log    Test Completed   
    # Log    This test was executed by %{username} on %{os}
    
*** Variables ***
# SCALAR Variable ${variable name}
${URL}    https://opensource-demo.orangehrmlive.com/
# LIST Variable @{variable name}    item1    item2
@{CREDENTIALS}    Admin    admin1234
# DICTIONARY Variable &{variable name}    K1=V1    K2=V2 
&{LOGINDATA}    username=Admin    password=admin123


*** Keywords ***
LoginKW    
    Input Text    id=txtUsername    @{CREDENTIALS}[0]    
    Input Password    id=txtPassword    &{LOGINDATA}[password]  
    Click Button    id=btnLogin 



















