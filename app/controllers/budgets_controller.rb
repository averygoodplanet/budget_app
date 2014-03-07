class BudgetsController < ApplicationController
  def index
    @budgets = current_user.budgets.to_a
    #putting "New Budget" form on same page as budget
    @budget = current_user.budgets.new
  end

  def create
    budget_name = params[:budget][:name]

    if !budget_name.blank?
      current_user.create_new_budget(budget_name)
      @id = current_user.budgets.where(name: budget_name).first.id
      redirect_to edit_budget_path(@id)
    else
      redirect_to budgets_path
    end
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

    budget_income = params[:budget][:income_cents].tr('$', '').tr(',' , '').to_f
    @budget = Budget.find(params[:id])
    @budget.update(income_cents: budget_income)

    number_of_categories = params[:budget][:categories_attributes].length
    for i in 0..(number_of_categories-1)
      category_id = params[:budget][:categories_attributes][i.to_s]["id"]
      category_amount_float = params[:budget][:categories_attributes][i.to_s]["amount_cents"].tr('$', '').tr(',', '').to_f
      Category.find(category_id).update(amount_cents: category_amount_float)
    end

    redirect_to budgets_path
  end

  private
  def budget_params
    params.require(:budget).permit(:income_cents, categories_attributes: [:name, :id, :amount_cents])
  end
end
