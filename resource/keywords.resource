***Settings***
Documentation       A test for part elements

Library             SeleniumLibrary
Library             Selenium2Library
Library             String
Resource            ./variables.resource



***Keywords***
open demoqa
    Open Browser       https://demoqa.com/     chrome
    
    #Set Window Size    1920    1080
    Maximize Browser Window

choose elements
    Mouse Down         //div[@class='card-body']/h5[contains(text(),'Book Store Application')] 
    sleep    2s
    click element      //div[@class='card-body']/h5[contains(text(),'Elements')] 

choose elements textbox
    click element     //*[@id="item-0"]/span

input full name
    input text        //*[@id="userName"]           ${fullname}
    sleep    2s

input email
    input text        //*[@id="userEmail"]          ${email}
    sleep    2s

input current address
    input text       //*[@id="currentAddress"]      ${current_address}
    sleep    2s

input permanent address
    input text       //*[@id="permanentAddress"]    ${permanent_address}  
    sleep    2s

click button submit
    execute javascript    window.scrollTo(0,1000)
    click element    //*[@id="submit"]

check output textbox
    sleep    3s
    element text should be     //*[@id="name"]       Name:${fullname}
    element text should be     //*[@id="email"]      Email:${email}
    element text should be     //*[@id="currentAddress"]        Current Address :${current_address}
    element text should be     //*[@id="permanentAddress"]      Permanent Address :${permanent_address}