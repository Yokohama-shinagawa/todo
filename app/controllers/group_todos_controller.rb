class GroupTodosController < ApplicationController
  def create
    GroupTodo.create(todo_params)
    redirect_to("/groups/top/#{todo_params[:group_id]}")
  end
  
  def destroy
    @todo = GroupTodo.find(params[:id])
    @todo.destroy
    redirect_to("/groups/top/#{@todo.group_id}")
  end
  
  private
  def todo_params
      params.require(:group_todo).permit(:text,:group_id,:user_id)
  end
end
