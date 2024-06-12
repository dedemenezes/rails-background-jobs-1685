class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # after_update :async_update
  after_commit :async_update, on: [:create, :update]
  def async_update
    UpdateUserJob.perform_later(self)
  end
end
