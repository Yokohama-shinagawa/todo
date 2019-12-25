class CreateUserTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_todos do |t|
      t.timestamps
    end
    add_column :user_todos, :text, :string
    add_column :user_todos, :user_id, :integer
  end
end
