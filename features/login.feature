Feature: Login
Scenario: User Logged In
  Given We navigate to the homepage login
  When We fill all fields correctly
    And user is logged
  Then We can to go to the page base of leads
