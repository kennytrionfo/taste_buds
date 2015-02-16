class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :title
      t.text :description
      t.string :flavor
      t.string :address
      t.string :rating

      t.timestamps
    end
  end
end
