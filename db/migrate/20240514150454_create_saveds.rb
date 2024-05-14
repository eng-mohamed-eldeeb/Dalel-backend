class CreateSaveds < ActiveRecord::Migration[7.0]
  def change
    create_table :saveds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, foreign_key: true
      t.references :character, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
