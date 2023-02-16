class ChangeUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email
    rename_column :users, :name, :username
    remove_index :users, :username
    add_index :users, :username, unique: true
  end
end
