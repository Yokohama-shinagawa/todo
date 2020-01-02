class GroupDonesController < ApplicationController
  def create
    @groupWorking = GroupWorking.find(params[:id])
    @groupWorking.destroy
    @groupDone = GroupDone.create(text: @groupWorking.text,
                                  user_id: @groupWorking.user_id,
                                  group_id: @groupWorking.group_id
                                  )
    redirect_to("/groups/top/#{@groupWorking.group_id}")
  end
end
