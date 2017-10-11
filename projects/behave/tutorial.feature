Feature: showing off behave

  Scenario: run a simple test
    Given we have behave installed
    when we implement a test
    then behave will test it for us!


Scenario: New lists are empty
  Given a new list
   then the list should be empty.

Scenario: Lists with things in them are not empty.
  Given a new list
   when we add an object
   then the list should not be empty.