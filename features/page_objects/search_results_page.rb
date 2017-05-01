require 'site_prism'
require_relative 'sections/search_results/search_results'

module PageObjects
  class SearchResultsPage < SitePrism::Page

    sections :search_results, PageObjects::Sections::SearchResultsPage::SearchResults, '.s-item-container'

    def first_line_item
      search_results[0]
    end

  end
end