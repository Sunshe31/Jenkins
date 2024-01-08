*** Settings ***
Library    SeleniumLibrary
Library    RPA.Windows
Library    RPA.JavaAccessBridge
Library    RPA.Desktop
Variables    abspath/xpath.py

*** Keywords ***
Add To Cart
    Sleep    5
    Execute Javascript    document.body.style.zoom="95%"
    Set Window Size    1200    800   
    Wait Until Element Is Visible    ${addtocart}
    SeleniumLibrary.Click Element    ${addtocart}
    Maximize Browser Window

Go back and Switch to main page of the product
    Go Back
    RPA.Windows.Close Window
    Get Window Handles
    Switch Window    main
    

#New Product to be searched
Browser should be opened
    Open Browser    https://www.flipkart.com/    chrome
    Maximize Browser Window
    Set Selenium Speed    0.1 seconds

System should display the different types of items to purchase and user searched the item
    Input Text    ${searchproduct}    Accessories
    SeleniumLibrary.Press Keys    ${searchproduct}    ENTER
    
Product should be selected and product details are visible in new tab
    Wait Until Page Contains Element    ${product}
    SeleniumLibrary.Click Element    ${product}
    Switch Window    NEW

Add to cart button should be clicked the webpage goes to where the product is added
    Add To Cart
    
Product page should be displayed 
    Go Back

System should close the new tab which is created
    RPA.Windows.Close Window
    Get Window Handles
    Switch Window    main

Product should be selected and product details should be viewed
    Sleep    2
    Wait Until Page Contains Element    ${anotherproduct}
    SeleniumLibrary.Click Element    ${anotherproduct}
    Switch Window    NEW

Add to Cart should be clicked
    Add To Cart
    
Product main page Should be Displayed 
    Go back and Switch to main page of the product

#Next Product to be searched

Searched product name should be cleared and another product name should be searched
    Go Back
    Input Text    ${searchproduct}    mobiles
    SeleniumLibrary.Press Keys    ${searchproduct}    ENTER

Product should be selected and details should be viewed
    Wait Until Page Contains Element    ${newproduct}
    SeleniumLibrary.Click Element    ${newproduct}
    Switch Window    NEW

Add to cart button should be clicked and cart page should be opened
    Add To Cart

System should be return to main page
    Go back and Switch to main page of the product

System should select the another product and details viewed
    Sleep    2
    Wait Until Page Contains Element    ${another_new_product}
    SeleniumLibrary.Click Element    ${another_new_product}
    Switch Window    NEW

System should click the Add to cart button
    Add To Cart

System should be returned to main page and go back
    Go back and Switch to main page of the product

    
System should clear already serached product and new product should be searched
    Go Back
    Input Text    ${searchproduct}    stationery
    Sleep    4
    SeleniumLibrary.Press Keys    ${searchproduct}    ENTER

System should select the product
    # SeleniumLibrary.Click Element    //span[contains (text(),'✕')]
    Get Window Handles
    Wait Until Page Contains Element    ${next_product}
    SeleniumLibrary.Click Element    ${next_product}
    Switch Window    NEW
System should click the add to cart button and goes to cart page
    Add To Cart
    Go back and Switch to main page of the product

System should go back to main page and next product should be clicked and product should be added to cart and cart page is displayed
    Sleep    5
    Wait Until Page Contains Element    ${next1_product}
    SeleniumLibrary.Click Element    ${next1_product}
    Switch Window    NEW
    Add To Cart
    Sleep    2

    ${cart_text}    SeleniumLibrary.Get Text    xpath=//div[@class="_2FYYw1 _2_OGP3 _2T1qz2"]
    ${equal}    Should Be Equal   ${cart_text}    Flipkart (6)
    
    IF    $equal != $cart_text
        Sleep    5
        Mouse Over    ${validate}
        Sleep    5
        SeleniumLibrary.Click Element    ${remove}
        Sleep    5
    END
