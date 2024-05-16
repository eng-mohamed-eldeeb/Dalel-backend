class CreateEraPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :era_points do |t|
      t.references :user, null: false, foreign_key: true
      t.references :era, null: false, foreign_key: true
      t.integer :points
      t.boolean :seen, default: false
      t.integer :tier, default: 0

      t.timestamps
    end
  end
end
