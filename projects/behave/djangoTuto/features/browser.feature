# Created by f.silvestre at 28/03/2016
Feature: Demonstrate how to test Django with behave & mechanize
  Test de url: http://pythonhosted.org/behave/django.html

  Scenario: Logging in to our Django site

    Given a user
    When I log in
    Then I see my account summary
    And I see a warm and welcoming message
    