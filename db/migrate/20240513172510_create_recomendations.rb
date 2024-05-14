class CreateRecomendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recomendations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product_recommendations, foreign_key: true
      t.references :character_recommendations, foreign_key: true
      t.references :event_recommendations, foreign_key: true
      t.timestamps
    end
  end
end
