Feature: User Authentication
  As a user, I want to be able to

  -sign up with a password and email address,
  without email confirmation
  -log in with password and email address
  -log out

Scenario: Sign Up and Logout
  When I go to the homepage
  And click the Sign Up link
  And I fill in "example@example.com" for "Email"
  And I fill in "password" for "Password"
  And I fill in "password" for "Password confirmation"
  And click "Sign up" button
  Then show me the page
  Then I should see "Welcome! You have signed up successfully." in the notice
  And I should see my email address
  And I should see "Log Out"
  And I should not see "Log In"
  And I should not see "Sign Up"

Scenario: Log In and Log Out
  Given I am a signed up as testuser
  When I go to the homepage
  Then show me the page
  And click "Log In" button
  Then I should see my email address
  And I should see "Log Out"
  And I should not see "Log In"
  And I should not see "Sign Up"
  When I click "Log Out"
  Then I should see "Log In"
  And I should not see "Log Out"