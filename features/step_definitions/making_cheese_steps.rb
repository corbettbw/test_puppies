Given("I have no cheese") do
  puts "I am so sad. I have no cheese :("
end

When("I press the make {string} cheese button") do |cheese_type|
  puts "I press the make #{cheese_type} cheese button"
end

Then("I should see the {string} message") do |cheese_type|
  puts "I love #{cheese_type} cheese"
end
