require 'selenium-webdriver'
require 'rspec/expectations'

Given /^Amazon.co.uk is open$/ do
  visit "http://www.amazon.co.uk"
end

When /^I click login$/ do
  @homepage = PageObjects::HomePage.new
  @homepage.navigation_bar.your_acc_btn.click
end


And(/^enter (.*) and (.*)$/) do |username, password|
  @loginpage = PageObjects::LoginPage.new
  @loginpage.sign_in.login(username,password)
end

Then(/^I am logged in$/) do
  @homepage = PageObjects::HomePage.new
  puts @homepage.navigation_bar.your_acc_btn.text
  expect(@homepage.navigation_bar.your_acc_btn).to have_content('Shafiq')
end

Given(/^Amazon\.co\.uk is open and I am logged in$/) do
  step %{Amazon.co.uk is open}
  step %{I click login}
  step %{enter shafiq_malik_2010@hotmail.com and Vipergtsr1!}
end

When(/^I search for ([^"]*)$/) do |product|
  @homepage = PageObjects::HomePage.new
  @homepage.navigation_bar.search_product product
end

Then(/^the first result has the word ([^"]*) in it$/) do |product|
  @searchresultspage = PageObjects::SearchResultsPage.new
  expect(@searchresultspage.first_line_item.text).to include(product)
end