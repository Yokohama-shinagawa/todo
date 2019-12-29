class AddColumnWorkings < ActiveRecord::Migration[5.2]
  def change
    add_column :user_workings, :group_id, :integer
  end
end
