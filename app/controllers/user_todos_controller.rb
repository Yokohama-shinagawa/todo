class UserTodosController < ApplicationController
  def create
      UserTodo.create(todo_params)
      # binding.pry
      redirect_to("/")
  end
  
  private
    def todo_params
        params.require(:user_todo).permit(:text).merge(user_id: current_user.id)
    end
end
