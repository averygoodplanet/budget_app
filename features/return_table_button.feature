Feature: Return to Table Button
  As a user, from a budget's edit page, I want to be able to click a "Return to Table"
  button, and be redirected to the table page (after warning box that unsaved
  changes will be lost).

Scenario: Use the Return to Table Button
  Given a testuser
  Given I'm logged in as a testuser
  When I fill in "My New Budget" for "Name"
  And click "Create Budget" button
  When I go to the table page
  And I should see "My New Budget"
  And click "Edit" button
  Then I should be on the edit page
  And I should see "My New Budget"
  And click "Return to Table" button
  Then I should be on the edit page