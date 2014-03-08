require 'spec_helper'

describe User do
  describe "#create_new_budget" do
    before(:each) do
      @current_user = Fabricate(:user)
      # helper method---fabricate user, capybara steps to sign in
      # in spec_helper.rb
      # pass the user to the helper method
      sign_user_in(@current_user)
      @current_user.create_new_budget("new budget")
    end

    it "should create a new budget under current_user with a budget name" do
      @current_user.budgets.where(name: "new budget").count.should equal(1)
    end

    it "should create a budget with income_cents of zero" do
      @current_user.budgets.where(name: "new budget")[0].income_cents.should eq(0)
    end

    it "should create the ten (10) categories under the new budget" do
      @current_user.budgets.where(name: "new budget")[0].categories.count.should equal(10)
    end

    it "the new budget's categories should have the default 10 category names" do
      categories = Budget.first.categories
      category_names = []
      for i in categories
        category_names.push(i.name)
      end
      category_names.should =~ ["Saving", "Housing", "Utiilities", "Food",
        "Transportation", "Clothing", "Medical/Health", "Personal", "Recreation", "Debts"]
    end

    it "the new budget's categories should start with income_cents set to zero" do
      categories = Budget.first.categories
      for category in categories
        category.amount_cents.should eq(0)
      end
    end
  end
end
