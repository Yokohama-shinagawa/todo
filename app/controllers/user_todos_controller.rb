class UserTodosController < ApplicationController
  def create
      @userTodo = UserTodo.create(text: todo_params[:text],
                                  user_id: current_user.id
                                  )
      redirect_to("/")
  end
  
  private
    def todo_params
        params.require(:user_todo).permit(:text)
    end
end
