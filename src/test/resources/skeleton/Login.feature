Feature: Login

In order to login in TestMe App
As a user
I need to register first

Business rules:
 - Ony registered users can do the login
 - user should provide all the necessary details on registration page
 
Questions:
-Can guest user purchease a product
 
 Background: 
 Given Larry is on login page
 
 Scenario: The one where user can do successful login
    Given Larry is on login page	
    When  Larry enters correct credentials
    Then  Larry is on the home page
  
  
 @data-driven
 Scenario: The one where the user change some of the data and place the order
 When Larry increases the headphone quantity by 2
 And continue for checkout
 And change the shipping address to a new address as "Pune"
 Then the product should be delivered to the new address
 
@datatable
 Scenario: The one where user search multiple products
 Given Larry is on login page
 When user search the below products
 |Headphone|
 |Laptop   |
 |Travel   |
 Then products should be added to cart if available
 
 @data-outline
 Scenario Outline: user can do successful login with different data
 When user enters correct username as "<username>"
 And  user enters correct password as "<password>"
 Then user can do successful login
 Examples:
 |username|password   |
 |admin   |password456|
 |Lalitha |password123|

 