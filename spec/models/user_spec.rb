require 'spec_helper'

describe User do
  describe "#create_new_budget" do
    before(:each) do
      @current_user = Fabricate(:user)
      @current_user.create_new_budget(name: "new budget")
    end

    it "should create a new budget under current_user with a budget name" do
      @current_user.budgets.where(name: "new budget").count.should equal(1)
    end

    it "should create a budget with income of zero" do
      @current_user.budgets.where(name: "new budget")[0].income should equal(0)
    end

    it "should create the ten (10) categories under the new budget" do
      @current_user.budgets.where(name: "new budget")[0].categories.count should equal(10)
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
  end
end
