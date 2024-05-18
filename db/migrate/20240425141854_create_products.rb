class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :catigory, default: 4
      t.decimal :price
      t.string :arabic_title
      t.string :english_title
      t.text :english_description
      t.text :arabic_description
      t.integer :points, default: 0
      t.integer :number_of_sales, default: 0
      t.references :era, null: false, foreign_key: true
      t.references :sub_era, null: true, foreign_key: true
      t.references :character, null: true, foreign_key: true
      t.references :event, null: true, foreign_key: true

      t.timestamps
    end
  end
end
