class UsersController < ApplicationController
  def top
    if user_signed_in?
      @userTodo = UserTodo.new
      @userTodos = UserTodo.where(user_id: current_user.id)
      @userWorkings = UserWorking.where(user_id: current_user.id)
      @userDones = UserDone.where(user_id: current_user.id)
    end
  end
end
