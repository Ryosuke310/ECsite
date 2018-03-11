class AddSomeColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :phone_number, :string
    add_column :users, :postal_code, :string
    add_column :users, :address, :string
    add_column :users, :password, :string
  end
end
