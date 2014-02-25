class BelongsTo < ActiveRecord::Migration
  def change
    change_table :budgets do |t|
      t.belongs_to :user
    end

    change_table :categories do |t|
      t.belongs_to :budget
    end
  end
end
