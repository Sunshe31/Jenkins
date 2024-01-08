*** Settings ***
Documentation    Flipkart
Resource    flipkart_support.robot

*** Test Cases ***
Flipkart
    [Documentation]    Flipkart
    Given user opens browser
    When user clicks on Search For Products Brands and More to search the item
    And user selects the products to view the details of the product
    Then user clicks on Add Cart Button
    And user returns to main page
    And user closes the created new tab
    And user selects the another product to view the details of the product
    And user clicks on Add to Cart Button
    And user returns to the main page and closes the created new tab
    Then user clears the searched product and search for another product
    And user selects the product to view the details of the product
    And user clicks on Add Cart Button for newly selected product
    And user returns to the main page and closes the created tab
    And user selects the another product to view the details of the item
    Then user clicks on Add To Cart button for the selected product
    And user go back to the main page and closes the new tab
    And user clear already searched product and again searches for new product
    Then user selects the product to view the details
    And user clicks the Add to cart button
    Then user returns to main page and clicks another product and add the product to cart
    