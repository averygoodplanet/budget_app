class BudgetsController < ApplicationController
  def index
    @budgets = current_user.budgets.all
    #putting "New Budget" form on same page as budget
    @budget = current_user.budgets.new
  end

  def create
    # get params
    budget_name = params[:budget][:name]
    #save new budget to database
    current_user.create_new_budget(budget_name)
    # redirect to edit page

    #***Test redirect to /budgets
    redirect_to action: 'index', status: 303
  end
end
