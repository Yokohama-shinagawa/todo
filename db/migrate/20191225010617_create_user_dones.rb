class CreateUserDones < ActiveRecord::Migration[5.2]
  def change
    create_table :user_dones do |t|

      t.timestamps
    end
    add_column :user_dones, :text, :string
    add_column :user_dones, :user_id, :integer
  end
end
