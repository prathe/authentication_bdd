Feature: User logout

  Scenario: User is kicked off from his account upon logout
    Given a logged in user
    When he logs out
    Then he should be kicked off from his account
