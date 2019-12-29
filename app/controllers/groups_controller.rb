class GroupsController < ApplicationController
  def top
      @groupTodo = GroupTodo.new
      @groupTodos = GroupTodo.where(group_id: params[:id])
      @group_id = params[:id]
  end
  
  def index
    @groups = Group.all
  end
  
  def new
    @group = Group.new
  end
  
  def create
    @groups = Group.create(group_params)
    redirect_to("/")
  end
  
  def show
    @group = Group.find(params[:id])
  end
  
  private
  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end
end
