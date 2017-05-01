module PageObjects
  module Sections
    module SearchResultsPage
      class SearchResultsList < SitePrism::Section

        sections :line_items, '.s-item-container'

      end
    end
  end
end