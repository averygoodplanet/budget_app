Feature: New Budget Form
  As a user, I want to be able to

  -from the table page, fill out and submit a
  form to create a new budget and be redirected
  to the edit page for that new budget

  Scenario: Login and Submit New Budget Form
    Given a testuser
    Given I'm logged in as a testuser
    Then I should be on the budgets path
    When I fill in "My New Budget" for "Name"
    And click "Create Budget" button
    Then I should be on the edit page
    And I should see "My New Budget"
    Then show me the page