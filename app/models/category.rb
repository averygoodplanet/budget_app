class Category < ActiveRecord::Base
  belongs_to :budget
  default_scope { order(:name) }
end
