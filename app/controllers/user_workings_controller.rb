class UserWorkingsController < ApplicationController
  def create
    @user_todo = UserTodo.find(params[:id])
    @user_todo.destroy
    @user_working = UserWorking.create(text: @user_todo.text,
                                      user_id: @user_todo.user_id
                                      )
    redirect_to("")
  end
end
