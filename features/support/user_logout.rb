module UserLogoutSteps
  def logout(user)
    visit logout_path
  end
end

World UserLogoutSteps

RSpec::Matchers.define :be_kicked_off do
  match do |user|
    !UserSession.find && current_path != account_path
  end

  failure_message_for_should do |user|
    "expected the user to be kicked off from his account"
  end
end
