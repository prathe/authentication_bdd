Feature: User login

  Scenario: User is greeted upon login
    Given a user with an account
    When he logs in
    Then he should be greeted
