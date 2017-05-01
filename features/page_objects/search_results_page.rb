require 'site_prism'
require_relative 'sections/search_results/search_results_list'

module PageObjects
  class SearchResultsPage < SitePrism::Page

    section :search_results_list, PageObjects::Sections::SearchResultsPage::SearchResultsList, '#s-results-list-atf'

    #def first_line_item
    #  search_results_list[0]
    #end

  end
end