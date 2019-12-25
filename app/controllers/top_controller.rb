class TopController < ApplicationController
  def index
    @userTodo = UserTodo.new
    @userTodos = UserTodo.all
  end
end
