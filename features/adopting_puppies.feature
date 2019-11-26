Feature: Adopting puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

Background:
  Given I am on the puppy adoption site

Scenario Outline: Adopting one puppy
  When I click the first view details button
  And I click the Adopt Me button
  And I click the Complete The Adoption button
  And I enter "<name>" in the name field
  And I enter "<address>" in the address field
  And I enter "<email>" in the email field
  And I select the "<pay_type>" from the pay with dropdown
  And I click the Place Order button
  Then I should see "Thank you for adopting a puppy!"

Examples:
  | name    | address           | email                   | pay_type        |
  | Cheesy  | 123 Main st       | cheesy@example.com      | Credit card     |
  | Corbett | 123 West Granada  | corbett@mailinator.com  | Check           |
  | John    | 889 E Glenrosa    | john@mailinator.com     | Purchase order  |

Scenario: Adopting two puppies
  When I click the first view details button
  And I click the Adopt Me button
  And I click the Adopt Another Puppy button
  And I click the second View Details button
  And I click the Adopt Me button
  And I click the Complete The Adoption button
  And I enter "Cheesy" in the name field
  And I enter "123 Main Street" in the address field
  And I enter "cheesy@example.com" in the email field
  And I select the "Credit card" from the pay with dropdown
  And I click the Place Order button
  Then I should see "Thank you for adopting a puppy!"

Scenario: Validate cart with one puppy
  When I click the first view details button
  And I click the Adopt Me button
  Then I should see "Brook" as the name for line item 1
  And I should see "$34.95" as the subtotal for line item 1
  And I should see "$34.95" as the cart total

Scenario: Validate cart with two puppies
  When I click the first view details button
  And I click the Adopt Me button
  And I click the Adopt Another Puppy button
  And I click the second View Details button
  And I click the Adopt Me button
  Then I should see "Brook" as the name for line item 1
  And I should see "$34.95" as the subtotal for line item 1
  And I should see "Hanna" as the name for line item 2
  And I should see "$22.99" as the subtotal for line item 2
  And I should see "$57.94" as the cart total
