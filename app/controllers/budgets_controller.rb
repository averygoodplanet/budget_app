class BudgetsController < ApplicationController
  def index
    @budgets = current_user.budgets.to_a
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

  def delete
    id = params[:id]
    current_user.budgets.find(id).destroy
    redirect_to budgets_path
  end

  def update
    # binding.pry
    # @book = Book.find(params[:id])
    # @book.update_attributes(params[:book])
    budget_income = params[:budget][:income_cents].tr('$', '').tr(',' , '').to_f
    @budget = Budget.find(params[:id])
    # @budget.update_attributes(income_cents: 100)
    # @budget.update(income_cents: 200)
    @budget.update(income_cents: budget_income)
    zero_category_id = params[:budget][:categories_attributes]["0"]["id"]
    zero_category_amount = params[:budget][:categories_attributes]["0"]["amount_cents"]
    zero_category_amount_float = zero_category_amount.tr('$', '').tr(',' , '').to_f
    Category.find(zero_category_id).update(amount_cents: zero_category_amount_float)
    # binding.pry
    # @budget.update(name: budget_income)
    # @budget.update(income_cents: params[:budget][:income_cents])
    # binding.pry
    # @budget.income_cents(budget_income)
    # @budget.save
    # @budget.update_attributes(budget_params)
    # @budget.update(budget_params)
    # binding.pry
    redirect_to budgets_path
  end

  private
  def budget_params
    params.require(:budget).permit(:income_cents, categories_attributes: [:name, :id, :amount_cents])
  end
end
