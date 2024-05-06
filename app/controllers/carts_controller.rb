class CartsController < ApplicationController

  def create
    user = User.find(params[:user_id])
    product_id = params[:product_id]

    if user.shopping_carts.length > 0
      render json: { errorMessages: ["User already has a shopping cart"] }, status: 400
      return
    end

    shopping_cart = ShoppingCart.create(user: user)
    cart_item = ShoppingCartItem.create(shopping_cart: shopping_cart, product_id: product_id, quantity: 1)
    render json: cart_item
  end
  # get cart details (product details {price, title, main image})

  def update_quantity
    user = User.find(params[:user_id])
    if !user.shopping_carts
      render json: { errorMessages: ["User does not have a shopping cart"] }, status: 400
      return
    end
    cart_item = ShoppingCartItem.find(params[:id])
    cart_item.update(quantity: params[:quantity])
    render json: cart_item
  end


  # remove product from cart

end
