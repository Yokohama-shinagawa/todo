class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|

      t.timestamps
    end
    add_column :groups, :name, :string
    add_column :groups, :user_id, :string
  end
end
