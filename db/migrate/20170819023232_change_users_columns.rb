class ChangeUsersColumns < ActiveRecord::Migration
  def change
    remove_column :users, :password, :string
    add_column :users, :password_diget, :string
  end
end
