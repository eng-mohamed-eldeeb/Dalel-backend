class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :type
      t.string :arabic_title
      t.string :english_title
      t.datetime :start_date
      t.datetime :end_date
      t.text :arabic_info
      t.text :english_info
      t.references :sub_era, foreign_key: true
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
