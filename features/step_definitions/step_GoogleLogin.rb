require 'watir-webdriver'

Given /^I navigate to the website$/ do
@browser = Watir::Browser.new
@browser.goto 'http://www.gmail.com'
end

When /^I fill in the Username$/ do

end

And /^I fill in the Password$/ do

end

And /^I click on Login$/ do

end

Then /^I should be logeed in$/ do

end


