require 'spec_helper'

describe "Checking out when using the puppy adoption site" do
  before do
    visit HomePage
  end

  context "When competing the adoption" do
     it "Should display a thank you message" do
       navigate_to(CheckoutPage).complete_order
       @current_page.text.should include "Thank you for adopting a puppy!"
     end
  end

  context "When checking out" do
    it "Should require a name" do
      navigate_to(CheckoutPage).complete_order('name' => '')
      @current_page.text.should include "Name can't be blank"
    end
  end
end
