class CreateTruckMerchandises < ActiveRecord::Migration[5.2]
  def change
    create_table :truck_merchandises do |t|
      t.string :name

      t.timestamps
    end
  end
end
