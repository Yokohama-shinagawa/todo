class TopController < ApplicationController
  def index
    @userTodo = UserTodo.new
    @userTodos = UserTodo.where(user_id: current_user.id)
    @userWorkings = UserWorking.where(user_id: current_user.id)
    @userDones = UserDone.where(user_id: current_user.id)
  end
end
