Feature: Adopting puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

Scenario: Adopting one puppy
  Given I am on the puppy adoption site
  When I click the view details button
  And I click the Adopt Me button
  And I click the Complete The Adoption button
  And I enter "Cheesy" in the name field
  And I enter "123 Main Street" in the address field
  And I enter "cheesy@example.com" in the email field
  And I select the "Credit card" from the pay with dropdown
  And I click the Place Order button
  Then I should see "Thank you for adopting a puppy!"
