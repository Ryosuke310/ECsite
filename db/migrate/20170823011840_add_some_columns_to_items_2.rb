class AddSomeColumnsToItems2 < ActiveRecord::Migration
  def change
      add_column :items, :eyecatch_image_name, :string 
  end
end
