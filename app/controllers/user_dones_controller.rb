class UserDonesController < ApplicationController
  def create
    @userWorking = UserWorking.find(params[:id])
    @userWorking.destroy
    @userDone = UserDone.create(text: @userWorking.text,
                                user_id: @userWorking.user_id)
    redirect_to("/")
    
  end
end
