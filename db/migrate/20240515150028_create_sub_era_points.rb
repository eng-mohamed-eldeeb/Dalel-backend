class CreateSubEraPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_era_points do |t|
      t.references :sub_era, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :points
      t.boolean :seen, default: false

      t.integer :tier, default: 0

      t.timestamps
    end
  end
end
