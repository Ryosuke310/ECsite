class AddReferencesToOrderDetails < ActiveRecord::Migration
  def change
    add_reference :order_details, :order, index: true
    add_reference :order_details, :item, index: true
  end
end
