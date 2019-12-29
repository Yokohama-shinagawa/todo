class UserWorking < ApplicationRecord
  belongs_to :user, :group
end
