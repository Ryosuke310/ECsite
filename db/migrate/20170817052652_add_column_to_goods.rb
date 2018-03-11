class AddColumnToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :price, :integer
    add_column :goods, :description, :text
    add_column :goods, :capacity, :float
    add_column :goods, :sale_num, :integer
  end
end
