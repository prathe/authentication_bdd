Given /^a logged in user$/ do
  @user = create_user
  login @user
end

When /^he logs out$/ do
  logout @user
end

Then /^he should be kicked off from his account$/ do
  @user.should be_kicked_off
end
