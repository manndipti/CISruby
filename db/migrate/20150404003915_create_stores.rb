class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
