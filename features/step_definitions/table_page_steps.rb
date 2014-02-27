Given(/^I'm logged in as a testuser$/) do
  @user = Fabricate(:user)
  visit '/'
  click_link("Log In")
  fill_in("Email", :with => @user.email)
  fill_in("Password", :with => @user.password)
  click_button("Sign in")
end

Given(/^I have two budgets created in the system$/) do
  @user.create_new_budget("first budget")
  @user.create_new_budget("second budget")
end

Then(/^I should see the two budgets' names displayed$/) do
  page.should have_content("first budget")
  page.should have_content("second budget")
end
