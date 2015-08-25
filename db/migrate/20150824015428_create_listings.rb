class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :town
      t.decimal :price
      t.string :style
      t.decimal :rooms
      t.decimal :bedrooms
      t.decimal :fullbaths
      t.decimal :halfbaths
      t.string :basement
      t.string :garage
      t.date :listdate
      t.string :category
      t.decimal :taxes
      t.text :remarks
      t.string :exterior
      t.string :hvac
      t.decimal :fireplace
      t.string :lotdescription
      t.text :addons
      t.string :yearbuilt

      t.timestamps null: false
    end
  end
end
