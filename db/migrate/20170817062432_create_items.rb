class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_name

      t.timestamps null: false
    end
  end
end
