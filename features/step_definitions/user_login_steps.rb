Given /^a user with an account$/ do
  @user = create_user
end

When /^he logs in$/ do
  login @user
end

Then /^he should be greeted$/ do
  @user.should be_greeted
end
