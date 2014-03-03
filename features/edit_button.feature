Feature: Edit Button
  As a user, from the table page, I want to be able to click an Edit button next to
  each budget, and then be directed to the edit page where I can edit that budget.

Scenario: Use the Edit Button to Get to the Edit Page
  Given a testuser
  Given I'm logged in as a testuser
  When I fill in "My New Budget" for "Name"
  And click "Create Budget" button
  When I go to the table page
  And I should see "My New Budget"
  And click "Edit" button
  Then I should be on the edit page
  And I should see "My New Budget"