class CreateGroupTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :group_todos do |t|

      t.timestamps
    end
    add_column :group_todos, :text, :string
    add_column :group_todos, :user_id, :integer
    add_column :group_todos, :group_id, :integer
  end
end
