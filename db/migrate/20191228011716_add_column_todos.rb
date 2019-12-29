class AddColumnTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :user_todos, :group_id, :integer
  end
end
