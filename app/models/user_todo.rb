class UserTodo < ApplicationRecord
  belongs_to :user, :group
end
