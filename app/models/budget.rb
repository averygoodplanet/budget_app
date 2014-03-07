class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :categories, dependent: :destroy
  validates :name, presence: true

  accepts_nested_attributes_for :categories
end
