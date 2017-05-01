module PageObjects
  module Sections
    module HomePage
      class NavigationBar < SitePrism::Section

        element :your_acc_btn, '#nav-link-yourAccount'
        element :search_box, '#twotabsearchtextbox'
        element :search_btn, :xpath, '(//input[@class="nav-input"])[1]'

        def search_product (product)
          search_box.set (product)
          search_btn.click
        end

      end
    end
  end
end