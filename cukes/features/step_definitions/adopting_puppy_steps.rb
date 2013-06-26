Given(/^I am on the puppy adoption site$/) do
  visit(HomePage)
end

When(/^I complete the adoption of a puppy$/) do
  on(HomePage).adopt
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).complete_order
end

Then(/^I should see "(.*?)"$/) do |message|
  @current_page.text.should include message
end