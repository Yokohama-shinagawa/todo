class CreateGroupDones < ActiveRecord::Migration[5.2]
  def change
    create_table :group_dones do |t|

      t.timestamps
    end
    add_column :group_dones, :text, :string
    add_column :group_dones, :user_id, :integer
    add_column :group_dones, :group_id, :integer
  end
end
