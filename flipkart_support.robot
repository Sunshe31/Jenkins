*** Settings ***
Resource    flipkart_web.robot

*** Keywords ***
user opens browser
    Browser should be opened

user clicks on Search For Products Brands and More to search the item
    System should display the different types of items to purchase and user searched the item
    
user selects the products to view the details of the product
    Product should be selected and product details are visible in new tab
    
user clicks on Add Cart Button
    Add to cart button should be clicked the webpage goes to where the product is added

user returns to main page
    Product page should be displayed    

user closes the created new tab
    System should close the new tab which is created

user selects the another product to view the details of the product
    Product should be selected and product details should be viewed

user clicks on Add to Cart Button
    Add to Cart should be clicked

user returns to the main page and closes the created new tab
    Product main page Should be Displayed 

user clears the searched product and search for another product
    Searched product name should be cleared and another product name should be searched
    
user selects the product to view the details of the product
    Product should be selected and details should be viewed

user clicks on Add Cart Button for newly selected product
    Add to cart button should be clicked and cart page should be opened

user returns to the main page and closes the created tab
    System should be return to main page

user selects the another product to view the details of the item
    System should select the another product and details viewed

user clicks on Add To Cart button for the selected product
    System should click the Add to cart button

user go back to the main page and closes the new tab
    System should be returned to main page and go back
user clear already searched product and again searches for new product
    System should clear already serached product and new product should be searched

user selects the product to view the details
    System should select the product

user clicks the Add to cart button
    System should click the add to cart button and goes to cart page

user returns to main page and clicks another product and add the product to cart
    System should go back to main page and next product should be clicked and product should be added to cart and cart page is displayed
