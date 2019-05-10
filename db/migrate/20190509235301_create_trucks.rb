class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.references :user, foreign_key: true
      t.references :TruckType, foreign_key: true
      t.references :TruckMerchandise, foreign_key: true
      t.references :coverage, foreign_key: true
      t.references :city, foreign_key: true
      t.boolean :gps
      t.boolean :aviable_now
      t.text :image
      t.float :latitude
      t.float :price_per_km

      t.timestamps
    end
  end
end
