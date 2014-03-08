class ChangeMoneysToDecimal < ActiveRecord::Migration
  def self.up
    # change_column :table_name, :column_name, :newtype
    change_column :budgets, :income_cents, :decimal
    change_column :categories, :amount_cents, :decimal
  end

  def self.down
    change_column :budgets, :income_cents, :integer
    change_column :categories, :amount_cents, :integer
  end
end
