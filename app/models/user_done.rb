class UserDone < ApplicationRecord
  belongs_to :user
  belongs_to :group
end
