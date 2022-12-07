***Settings***
Documentation     Testing Element text box
Resource          ../resource/keywords.resource

Suite Teardown    Close Browser


***Test Cases***
TC_Fill_Textbox
    open demoqa
    choose elements
    choose elements textbox
    input full name
    input email
    input current address
    input permanent address
    click button submit
    check output textbox