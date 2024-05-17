class CreateCharacterPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :character_points do |t|
      t.references :character, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :points
      t.integer :tier, default: 0
      t.boolean :seen, default: false
      t.timestamps
    end
  end
end
