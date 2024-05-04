class CartsController < ApplicationController

  def create
    user = User.find(params[:user_id])
    product_id = params[:product_id]
    quantity = params[:quantity]

    if user.shopping_carts.length > 0
      render json: { errorMessages: ["User already has a shopping cart"] }, status: 400
      return
    end

    shopping_cart = ShoppingCart.create(user: user)
    cart_item = ShoppingCartItem.create(shopping_cart: shopping_cart, product_id: product_id, quantity: quantity)
    render json: cart_item
  end

  def add_product
    cart_item = ShoppingCartItem.find(params[:id])
    cart_item.update(quantity: params[:quantity])
    render json: cart_item
  end

end
