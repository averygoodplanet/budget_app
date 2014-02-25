class Fields < ActiveRecord::Migration
  def change
    add_money :budgets, :income
    add_column :budgets, :name, :string
    add_money :categories, :amount
    add_column :categories, :name, :string
  end
end
