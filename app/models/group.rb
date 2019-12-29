class Group < ApplicationRecord
  has_many :middle
  has_many :users, through: :middle
  has_many :user_todos
  has_many :user_workings
  has_many :user_dones
end
