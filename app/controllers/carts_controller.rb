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

  # add product to cart
  def add_product
    user = User.find(params[:user_id])
    product = Product.find(params[:product_id])
    shopping_cart = user.shopping_carts.last

    if shopping_cart.nil?
      render json: { errorMessage: "User does not have a shopping cart" }, status: 400
      return
    end

    cart_item = product.shopping_cart_items.where(shopping_cart: shopping_cart).last

    if cart_item
      cart_item.update(quantity: cart_item.quantity + 1)
    else
      cart_item = ShoppingCartItem.create(shopping_cart: shopping_cart, product: product, quantity: 1)
    end

    render json: {message: "success", cart_item: cart_item}
  end

  # get cart details (product details {price, title, main image, quantaty})
  def get_cart_details
    user = User.find(params[:user_id])
    shopping_cart = user.shopping_carts.last
    if shopping_cart.nil?
      render json: { products: [] }
      return
    end

    if shopping_cart.nil?
      render json: { errorMessage: "User does not have a shopping cart" }, status: 400
    end

    cart_items = shopping_cart.shopping_cart_items
    products = cart_items.map { |item|
      {
        id: item.product.id,
        price: item.product.price,
        title: I18n.locale.to_s == 'ar' ? item.product.arabic_title : item.product.english_title,
        main_image: url_for(item.product.main_image),
        quantity: item.quantity
      }
    }

    render json: products
  end

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
  def remove_product
    user = User.find(params[:user_id])
    product = Product.find(params[:product_id])
    shopping_cart = user.shopping_cart.last
    if shopping_cart.nil?
      render json: { errorMessage: "User does not have a shopping cart" }, status: 400
    end
    cart_item = ShoppingCartItem.find_by(shopping_cart: shopping_cart, product: product)
    cart_item.destroy

    render json: {message: "success"}
  end


  def increment_and_decrement
    user = User.find(params[:user_id])
    product = Product.find(params[:product_id])
    shopping_cart = user.shopping_carts.last
    if shopping_cart.nil?
      render json: { errorMessage: "User does not have a shopping cart" }, status: 400
    end
    cart_item = ShoppingCartItem.find_by(shopping_cart: shopping_cart, product: product)
    if params[:inc_or_dec] == "increment"
      cart_item.update(quantity: cart_item.quantity + 1)
      render json: {message: "success"}
    elsif params[:inc_or_dec] == "decrement"
      cart_item.update(quantity: cart_item.quantity - 1)
      render json: {message: "success"}
    else
      render json: { errorMessage: "Invalid action" }, status: 400
    end
  end

end
