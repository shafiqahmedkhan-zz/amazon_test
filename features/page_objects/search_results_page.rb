require 'site_prism'
require_relative 'sections/search_results/search_results'

module PageObjects
  class SearchResultsPage < SitePrism::Page

    sections :search_results, PageObjects::Sections::SearchResultsPage::SearchResults, '.s-item-container'

    def choosing_first_line_item
      search_results.first.product_name.click
    end

  end
end