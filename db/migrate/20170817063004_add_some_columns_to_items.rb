class AddSomeColumnsToItems < ActiveRecord::Migration
  def change
      add_column :items, :link_file_name, :string 
      add_column :items, :price, :integer
      add_column :items, :sale_num, :integer
      add_column :items, :capacity, :float
      add_column :items, :description, :text
  end
end
