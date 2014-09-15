require 'watir-webdriver'

Given /^I go to the website$/ do
	@browser = Watir::Browser.new
	@browser.goto 'http://www.gmail.com'
end

When /^I fill in the Username$/ do
	@browser.text_field(:name, 'Email').set 'shweta.verma@optimusinfo.com'
end

And /^I fill in the Password$/ do
	@browser.text_field(:name, 'Passwd').set '123456'
end

And /^I click on SignIn$/ do
	@browser.button(:name, 'signIn').click
end

Then /^Then I have to close the browser$/ do
	@broser.close
end



