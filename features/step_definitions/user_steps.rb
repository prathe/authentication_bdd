Given /^I visit the "([^"]*)" page$/ do |page_name|
  visit self.send "#{page_name.downcase.delete "/\s+/"}_path"
end

Given /^I am not logged in$/ do
  UserSession.find.try :destroy
end

Given /^I am logged in$/ do
  UserSession.find.try :destroy
  @user = FactoryGirl.build(:user)
  @user.save_without_session_maintenance
  visit login_path
  fill_in 'Email', :with => @user.email
  fill_in 'Password', :with => @user.password
  click_on 'Log in'
end

When /^I click on "([^"]*)"$/ do |link_name|
  click_on link_name
end

Then /^I should be redirected to the "([^"]*)" page$/ do |page_name|
  expected_path = self.send "#{page_name.downcase.delete "/\s+/"}_path"
  expected_path.should == current_path
end

Then /^I should see a "([^"]*)" link$/ do |link_name|
  expect {find_link(link_name)}.to_not raise_error
end

Then /^I shouldn't see a "([^"]*)" link$/ do |link_name|
  expect {find_link(link_name)}.to raise_error
end

Then /^I should see "([^"]*)"$/ do |text|
  page.has_content?(text).should be_true
end

#Then /^I should see a "([^"]*)" header/ do |header_text|
#  find('h1').should have_content(header_text)
#end

# Scenario: Successful login

Given /^My name is "([^"]*)"$/ do |name|
  @user = FactoryGirl.build(:user, :name => name)
  @user.save_without_session_maintenance
end

Given /^I fill in my email$/ do
  fill_in 'Email', :with => @user.email
end

Given /^I fill in my password$/ do
  fill_in 'Password', :with => @user.password
end
