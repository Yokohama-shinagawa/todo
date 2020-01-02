class CreateGroupWorkings < ActiveRecord::Migration[5.2]
  def change
    create_table :group_workings do |t|

      t.timestamps
    end
    add_column :group_workings ,:text ,:string
    add_column :group_workings ,:user_id ,:integer
    add_column :group_workings ,:group_id ,:integer
  end
end
