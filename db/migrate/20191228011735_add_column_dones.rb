class AddColumnDones < ActiveRecord::Migration[5.2]
  def change
    add_column :user_dones, :group_id, :integer
  end
end
