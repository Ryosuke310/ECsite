class AddReferencesToOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :user_id, :integer
    add_reference :orders, :user, index: true
  end
end
