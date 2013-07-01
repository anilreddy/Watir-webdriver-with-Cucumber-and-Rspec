PageObject::PageFactory.routes = {
    :default => [[HomePage, :adopt],
                 [DetailsPage, :add_to_cart],
                 [ShoppingCartPage, :proceed_to_checkout],
                 [CheckoutPage, :complete_order]]
}
