class RemoveIndexFromUsers < ActiveRecord::Migration
  def change
      remove_index :users, :confirmation_token
  end
end
