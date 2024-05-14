class CreateEventRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :event_recommendations do |t|
      t.integer :level
      t.integer :belong_to_tier
      t.references :character, null: false, foreign_key: true
      t.boolean :seen
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
