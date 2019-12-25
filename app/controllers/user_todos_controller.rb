class UserTodosController < ApplicationController
  def create
      @userTodo = UserTodo.create(todo_params)
 
      redirect_to("/")
  end
  
  private
    def todo_params
        params.require(:user_todo).permit(:text)
    end
end
