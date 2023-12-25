class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.text :arabic_content
      t.text :english_content
      t.string :arabic_title
      t.string :english_title
      t.references :sub_era, null: false, foreign_key: true

      t.timestamps
    end
  end
end
