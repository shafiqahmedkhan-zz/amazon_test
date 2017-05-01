module PageObjects
  module Sections
    module SearchResultsPage
      class SearchResults < SitePrism::Section

        element :product_name, :xpath, '(//div[@class="a-row a-spacing-small"])[1]'

      end
    end
  end
end