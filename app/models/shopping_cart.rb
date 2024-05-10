class ShoppingCart < ApplicationRecord
  belongs_to :user

  has_many :shopping_cart_items, dependent: :destroy
end
