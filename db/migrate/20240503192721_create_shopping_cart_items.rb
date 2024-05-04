class CreateShoppingCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_cart_items do |t|
      t.references :shopping_cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
