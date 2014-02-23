When(/^I go to the homepage$/) do
  visit('/')
end

Then(/^show me the page$/) do
  save_and_open_page
  # page.save_screenshot('screenshot.png')
  # # Launchy.open 'screenshot.png'
end

Then(/^click "(.*?)" button$/) do |text|
  click_button(text)
end

Then(/^I fill in "(.*?)" for "(.*?)"$/) do |fill_in_with, field_name|
  fill_in(field_name, :with => fill_in_with)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should see my email address$/) do
  page.should have_content('example@example.com')
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should have_no_content(text)
end

Given(/^I am a signed up as testuser$/) do
  Fabricate(:user)
end

When(/^I click "(.*?)"$/) do |button_text|
  click_button(button_text)
end

Then(/^click "(.*?)" link$/) do |arg1|
  click_link(arg1)
end

Then(/^click the Sign Up link$/) do
  click_link('Sign Up')
end

Then(/^I should see "(.*?)" in the notice$/) do |arg1|
  find(".notice").should have_content(arg1)
end
