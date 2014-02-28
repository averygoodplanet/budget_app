Then(/^I should be on the edit page$/) do
  current_path.should == "/budgets/:id/edit"
end
