class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.references :neighbourhood, null: false, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
