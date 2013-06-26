Feature: I want to adopt a puppy

=> Details should go here! <=

Background:
  Given I am on the puppy adoption site

Scenario: Thank you message should be display after adoption is complete
  When I complete the adoption of a puppy
  Then I should see "Thank you for adopting a puppy!"