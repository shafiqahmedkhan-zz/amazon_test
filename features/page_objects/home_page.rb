require 'site_prism'
require_relative 'sections/home_page/navigation_bar'

module PageObjects
  class HomePage < SitePrism::Page

      section :navigation_bar, PageObjects::Sections::HomePage::NavigationBar, '#navbar'

  end
end