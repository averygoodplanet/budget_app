Then(/^I should be on the edit page$/) do
  current_path.should match(/\/budgets\/\d+\/edit/)
end
