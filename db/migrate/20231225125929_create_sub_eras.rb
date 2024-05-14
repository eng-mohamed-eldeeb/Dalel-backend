class CreateSubEras < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_eras do |t|
      t.string :arabic_name
      t.string :english_name
      t.text :arabic_info
      t.text :english_info
      t.references :era, null: false, foreign_key: true
      t.integer :tier
      t.integer :point, default: 0.0

      t.timestamps
    end
  end
end
