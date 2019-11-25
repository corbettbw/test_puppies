Given("I am on the puppy adoption site") do
  @browser.goto 'http://puppies.herokuapp.com'
end

When("I click the first view details button") do
  @browser.button(value: 'View Details', index: 1).click
end

When("I click the Adopt Me button") do
  @browser.button(value: 'Adopt Me!').click
end

When("I click the Complete The Adoption button") do
  @browser.button(value: 'Complete the Adoption').click
end

When("I enter {string} in the name field") do |name|
  @browser.text_field(id: 'order_name').set(name)
end

When("I enter {string} in the address field") do |address|
  @browser.textarea(id: 'order_address').set(address)
end

When("I enter {string} in the email field") do |email|
  @browser.text_field(id: 'order_email').set(email)
end

When("I select the {string} from the pay with dropdown") do |pay_type|
  @browser.select_list(id: 'order_pay_type').select(pay_type)
end

When("I click the Place Order button") do
  @browser.button(value: 'Place Order').click
end

Then("I should see {string}") do |text|
  fail 'Browser text did not match expected value' unless @browser.text.include? text
end

When("I click the Adopt Another Puppy button") do
  @browser.button(value: 'Adopt Another Puppy').click
end

When("I click the second View Details button") do
  @browser.button(value: 'View Details', index: 2).click
end
