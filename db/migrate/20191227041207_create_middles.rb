class CreateMiddles < ActiveRecord::Migration[5.2]
  def change
    create_table :middles do |t|

      t.timestamps
    end
    add_column :middles, :user_id, :integer
    add_column :middles, :group_id, :integer
  end
end
