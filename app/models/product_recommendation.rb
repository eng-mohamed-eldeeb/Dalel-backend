class ProductRecommendation < ApplicationRecord
  belongs_to :product
  belongs_to :recommended_product, class_name: 'Product', foreign_key: 'recommended_product_id'
end
