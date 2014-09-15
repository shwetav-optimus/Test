require 'watir-webdriver'

Given /^I navigate to the website$/ do
   @browser = Watir::Browser.new :ff
   @browser.goto 'http://nitrowriters.com/form/form.html'
end

When /^I fill the first textbox$/ do
   @browser.text_field(:name, 'my_text_field').set 'Yes'
end
 
And /^I select a radio button$/ do
   @browser.radio(:id, 'familiar_rails_2').set
end

And /^I write the first name$/ do
   @browser.text_field(:name, 'favorite_1').set 'abc'
end

And /^I write the last name$/ do
   @browser.text_field(:name,'favorite_2').set 'efg'
end

And /^I select the checkbox$/ do
   @browser.checkbox(:name, 'element_14_1').set
   @browser.checkbox(:name, 'element_14_3').set
end

And /^I select from the select list$/ do
   @browser.select_list(:id, 'usage').select '1-3 years'
end

Then /^I click on Submit$/ do
   @browser.button(:name, 'submit').click
end




