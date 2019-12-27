class Group < ApplicationRecord
  has_many :middle
  has_many :users, through: :middle
  
end
