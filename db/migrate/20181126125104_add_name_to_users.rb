class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name
    add_column :users, :last_name
  end
end