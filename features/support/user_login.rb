module UserLoginSteps
  def create_user(user = FactoryGirl.build(:user))
    user.save_without_session_maintenance
    user
  end

  def login(user)
    visit login_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Log in'
  end
end

World UserLoginSteps

RSpec::Matchers.define :be_greeted do
  match do |user|
    greeting_message = "Welcome, #{user.name}"
    page.has_content? greeting_message
  end

  failure_message_for_should do
    "expected the user to see a greeting message"
  end
end
