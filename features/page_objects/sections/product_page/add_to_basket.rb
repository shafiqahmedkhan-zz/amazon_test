module PageObjects
  module Sections
    module ProductPage
      class AddToBasket < SitePrism::Section

        element :add_to_basket_btn, '#add-to-cart-button'

        def add_product_to_basket
          add_to_basket_btn.click
        end

      end
    end
  end
end