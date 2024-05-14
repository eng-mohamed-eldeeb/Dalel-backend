class CreateProductRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :product_recommendations do |t|
      t.float :rate
      t.integer :level
      t.integer :belong_to_tier
      t.boolean :seen
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
