class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :category
      t.string :place_ward
      t.string :place_address
      t.string :station
      t.string :day_of_week
      t.integer :fee

      t.timestamps
    end
  end
end
