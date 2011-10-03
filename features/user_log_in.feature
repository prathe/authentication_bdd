Feature: User log in
  As a user
  I want to log in
  So I can use all the features on the website

  Scenario: I want to log in
    Given I am not logged in
    And I visit the "Home" page
    Then I should see a "Log in" link

  Scenario: I successfully log in
    Given My name is "Jane Russell"
    And I am not logged in
    And I visit the "Log in" page
    And I fill in my email
    And I fill in my password
    When I click on "Log in"
    Then I should be redirected to the "My Account" page
    And I should see "Hello Jane!"
    And I should see a "Log out" link
    But I shouldn't see a "Log in" link
