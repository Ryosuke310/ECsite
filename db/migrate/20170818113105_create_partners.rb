class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :representative
      t.string :phone_number
      t.string :email
      t.string :postal_code
      t.string :address
      t.string :url

      t.timestamps null: false
    end
  end
end
