class AddReferencesToCartItems2 < ActiveRecord::Migration
  def change
    add_reference :cart_items, :item, index: true
  end
end
