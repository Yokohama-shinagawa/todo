class CreateUserWorkings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_workings do |t|

      t.timestamps
    end
  add_column :user_workings, :text, :string
  add_column :user_workings, :user_id, :integer
  end
end
