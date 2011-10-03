Given /^I visit the "([^"]*)" page$/ do |page_name|
  visit case page_name
        when 'Home'
          home_path
        when 'Log in'
          login_path
        end
end

Given /^I am not logged in$/ do
  activate_authlogic
  session = UserSession.find
  session.destroy if session
end

When /^I click on "([^"]*)"$/ do |link_name|
  click_on link_name
end

Then /^I should be redirected to the "([^"]*)" page$/ do |page_name|
  expected_path = case page_name
                  when "My Account"
                    account_path
                  end
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

# Scenario: Successful login

Given /^My name is "([^"]*)"$/ do |name|
  activate_authlogic
  @user = FactoryGirl.create(:user, :name => name)
end

Given /^I fill in my email$/ do
  fill_in 'Email', :with => @user.email
end

Given /^I fill in my password$/ do
  fill_in 'Password', :with => @user.password
end
