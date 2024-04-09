class CreateEventSections < ActiveRecord::Migration[7.0]
  def change
    create_table :event_sections do |t|
      t.text :arabic_content
      t.text :english_content
      t.string :arabic_title
      t.string :english_title
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
