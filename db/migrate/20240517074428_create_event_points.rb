class CreateEventPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :event_points do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :points
      t.integer :tier
      t.boolean :seen

      t.timestamps
    end
  end
end
