class ChangeColumnsCartItems < ActiveRecord::Migration
  def change
    change_column :cart_items, :quantity, :integer, :default => 0
  end
end
