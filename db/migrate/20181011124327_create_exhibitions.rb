class CreateExhibitions < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibitions do |t|
      t.string :name
      t.string :place_ward
      t.string :place_name
      t.string :place_address
      t.string :station
      t.date :first_date
      t.date :last_date
      t.text :closed_date
      t.text :opening_time
      t.text :detail
      t.string :category

      t.timestamps
    end
  end
end
