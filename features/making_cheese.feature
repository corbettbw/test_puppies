Feature: Making Cheese

  As a cheese maker
  I want to make cheese
  So I can share my cheesiness

Scenario Outline: Using the cheese machine
  Given I have no cheese
  When I press the make "<type>" cheese button
  Then I should see the "<message>" message

Examples:
  | type    | message               |
  | Swiss   | I love Swiss Cheese   |
  | Blue    | I love Blue Cheese    |
  | Cheddar | I love Cheddar Cheese |
