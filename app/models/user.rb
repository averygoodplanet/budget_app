class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :budgets, dependent: :destroy

  def create_new_budget(name)
    # budget = Budget.create(name: name, user: current_user)
    budget = Budget.create(name: name, user: self.name)
  end
end
