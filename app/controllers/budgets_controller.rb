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
    @id = current_user.budgets.where(name: budget_name).first.id
    # redirect to edit page
    redirect_to edit_budget_path(@id)
  end

  def edit
    @id = params[:id]
    @budget = current_user.budgets.find(@id)
    @categories = current_user.budgets.find(@id).categories.to_a
    @title_string ="Budget: " + @budget.name
  end
end
