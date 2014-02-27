class BudgetsController < ApplicationController
  def index
    @budgets = current_user.budgets.all
  end
end
