# Implementing authentication using Behavior Driven Development

I create this demo app to familiarize with Authlogic and BDD. This demo is featuring:

* Rails 3.1
* Authlogic
* RSpec
* Cucumber
* Capybara
* Factory Girl

## About

This demo is evolutive and has started with a simple "User log in" feature. The features are added using the outside-in approach.

Look at the git tags to browse through the evolution of the features and the scenarios implementations. 

## Running the demo

1. Clone the repo
2. Copy config/database.yml-tmpl to config/database.yml
3. Copy config/cucumber.yml-tmpl to config/cucumber.yml
4. If you are using rvm, create your gemset and
5. gem install bundler
6. bundle install
7. rake db:setup RAILS_ENV=test
8. rake db:setup RAILS_ENV=development


## Running the tests

    ./script/cucumber

All of them should be green

## Some tests key files

* features/user_login.feature
* features/support/user_login.rb
* features/step_definitions/user_login_steps.rb
* spec/factories.rb

## Changelog

### 0.3

* Redefine existing features using acceptance test philosophy instead of integration test philosophy and by being more declarative in scenarios elaboration.

### 0.2

* DRY up a bit the test and use the first person when describing scenarios
* Feature: User log out
    * Scenario: I log out

### 0.1

* Authlogic minimal MVC + migration installation
* Feature: User log in
    * Scenario: I want to log in
    * Scenario: I successfully log in