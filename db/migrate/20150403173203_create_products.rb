class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :caterer_name
      t.string :product_title
      t.text :description
      t.string :image_url
      t.string :cuisine
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
