Feature: User Authentication
  As a user, I want to be able to

  -sign up with a password and email address,
  without email confirmation
  -log in with password and email address
  -log out

Scenario: Sign Up and Logout
  When I go to the homepage
  Then show me the page
  And click "Sign Up" button
  Then I fill in "testuser" for "Username"
  And I fill in "example@example.com" for "Email"
  And I fill in "password" for "Password"
  And I fill in "password" for "Confirm Password"
  And click "submit" button
  Then I should see "You've signed up successfully."
  And I should see my email address
  And I should see "Logout"
  And I should not see "Login"
  And I should not see "Sign Up"

Scenario: Log In and Logout
  Given I am a signed up as testuser
  When I go to the homepage
  Then show me the page
  And click "Log In" button
  Then I should see my email address
  And I should see "Logout"
  And I should not see "Login"
  And I should not see "Sign Up"
  When I click "Logout"
  Then I should see "Login"
  And I should not see "Logout"