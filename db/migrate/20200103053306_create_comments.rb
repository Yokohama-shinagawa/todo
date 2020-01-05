class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.timestamps
    end
    add_column :comments, :text, :string
    add_column :comments, :user_id, :integer
    add_column :comments, :group_id, :integer
    add_column :comments, :group_todo_id, :integer
    add_column :comments, :group_working_id, :integer
    add_column :comments, :group_done_id, :integer
  end
end
