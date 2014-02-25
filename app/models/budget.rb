class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :categories, dependent: :destroy
end
