class UserDone < ApplicationRecord
  belongs_to :user, :group
end
