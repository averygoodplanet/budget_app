class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :budgets, dependent: :destroy

  def create_new_budget(name)
    budget = self.budgets.create(name: name, user: self)
  end
end
