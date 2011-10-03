Feature: User log out
  As a user
  I want to log out
  So I feel safe

  Scenario: I log out
    Given I am logged in
    When I click on "Log out"
    Then I should be redirected to the "Log in" page
