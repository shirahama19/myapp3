class CreateMaxims < ActiveRecord::Migration[5.1]
  def change
    create_table :maxims do |t|
      t.text :content
      t.text :meaning
      t.string :person

      t.timestamps
    end
  end
end
