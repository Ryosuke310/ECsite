class ChangeUsersColumns2 < ActiveRecord::Migration
  def change
    remove_column :users, :password_diget, :string
    add_column :users, :password_digest, :string
  end
end
