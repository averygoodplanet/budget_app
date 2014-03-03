Feature: Delete Button
  As a user, I want to be able to click the delete button next to a budget on the
  table page, be prompted with a confirmation pop-up, delete the budget, and
  reload the table page.

Scenario: Delete a Budget
  Given a testuser
  Given I'm logged in as a testuser
  When I fill in "My New Budget" for "Name"
  And click "Create Budget" button
  When I go to the table page
  And I should see "My New Budget"
  And click "Delete" button
  And I should not see "My New Budget"