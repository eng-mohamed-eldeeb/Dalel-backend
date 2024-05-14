class CreateEras < ActiveRecord::Migration[7.0]
  def change
    create_table :eras do |t|
      t.string :name
      t.integer :tier
      t.float :point, default: 0.0

      t.timestamps
    end
  end
end
