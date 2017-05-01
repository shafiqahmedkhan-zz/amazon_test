require 'site_prism'
require_relative 'sections/product_page/add_to_basket'

module PageObjects
  class ProductPage < SitePrism::Page

    section :add_to_basket, PageObjects::Sections::ProductPage::AddToBasket, '#rbbContainer'

  end
end