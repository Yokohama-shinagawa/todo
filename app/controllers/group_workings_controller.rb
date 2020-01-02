class GroupWorkingsController < ApplicationController
  def create
    @group_todo = GroupTodo.find(params[:id])
    @group_todo.destroy
    GroupWorking.create(text: @group_todo.text,
                        user_id: @group_todo.user_id,
                        group_id: @group_todo.group_id)
                        
    redirect_to("/groups/top/#{@group_todo.group_id}")
  end
end
