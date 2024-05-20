class ProductsController < ApplicationController
  def index
    era = params[:era]
    products = Product.where(era: era).all

    products = products.map do |product|
      {
        id: product.id,
        title: I18n.locale.to_s == 'ar' ? product.arabic_title : product.english_title,
        era_id: product.era_id,
        price: product.price,
        catigory: product.catigory,
        main_image: url_for(product.main_image),
        reviews: {
          number_of_reviews: product.reviews.count || 0,
          average_stars: product.reviews.average(:stars) || 0,
        }
      }
    end

    # top 5 sales
    top_sales = products.sort_by { |product| product[:number_of_sales] }.reverse.first(5)

    # add => top rated
    # add => five random catigories products

    # products with antiques catigory
    products_antiques = products.select { |product| product[:catigory] == 'antiques' }

    render json: {products:, products_antiques:, top_sales:}
  end

  def show
    user = User.find(params[:user_id])
    saved = user.saveds.find_by(product_id: params[:id])
    saved = saved ? true : false
    product = Product.find(params[:id])
    reviews = get_reviews(product)
    render json: {
      product: {
        id: product.id,
        title: I18n.locale.to_s == 'ar' ? product.arabic_title : product.english_title,
        description: I18n.locale.to_s == 'ar' ? product.arabic_description : product.english_description,
        era_id: product.era.name,
        saved: saved,
        price: product.price,
        catigory: product.catigory,
        main_image: url_for(product.main_image),
        secondary_image: url_for(product.secondary_image),
        thirdary_image: url_for(product.thirdary_image),
        reviews:
      }
    }
  end

  def get_product_by_catigory
    begin
      products = Product.where(catigory: params[:catigory]).all

      products = products.map do |product|
        {
          id: product.id,
          title: I18n.locale.to_s == 'ar' ? product.arabic_title : product.english_title,
          era_id: product.era_id,
          price: product.price,
          catigory: product.catigory,
          main_image: url_for(product.main_image),
          reviews: {
          number_of_reviews: product.reviews.count || 0,
          average_stars: product.reviews.average(:stars) || 0,
        }
        }
      end

      render json: {products: products}
    rescue => e
      render json: {error: e.message}, status: :unprocessable_entity
    end
  end

  def get_top_selling
    begin
      products = Product.where(era: params[:era].to_i).all
      top_sales = products.sort_by { |product| product[:number_of_sales] || 0 }.reverse
      top_sales = top_sales.map do |product|
        {
          id: product.id,
          title: I18n.locale.to_s == 'ar' ? product.arabic_title : product.english_title,
          era_id: product.era_id,
          price: product.price,
          catigory: product.catigory,
          main_image: url_for(product.main_image),
          reviews: {
          number_of_reviews: product.reviews.count || 0,
          average_stars: product.reviews.average(:stars) || 0,
        }
        }
      end

      render json: {top_sales:}
    rescue => e
      render json: {error: e.message}, status: :unprocessable_entity
    end
  end

  def get_5_recommended_products
    user = User.find(params[:user_id])
    era = Era.find(params[:era_id])
    recommended_products = user.get_4_recommended_products(era)
    recommended_products = recommended_products.map do |product|
      {
        id: product.id,
        title: I18n.locale.to_s == 'ar' ? product.arabic_title : product.english_title,
        era_id: product.era_id,
        price: product.price,
        catigory: product.catigory,
        main_image: url_for(product.main_image),
        reviews: {
          number_of_reviews: product.reviews.count || 0,
          average_stars: product.reviews.average(:stars) || 0,
        }
      }
    end
    render json: {recommended_products: recommended_products}
  end

  def search
    begin
      search_params = params.require(:search).permit(:arabic_title, :english_title)
      products = Product.where('arabic_title LIKE :search OR english_title LIKE :search', search: "%#{search_params.values.first}%").all
      products = products.map do |product|
        {
          id: product.id,
          title: I18n.locale.to_s == 'ar' ? product.arabic_title : product.english_title,
          era_id: product.era_id,
          price: product.price,
          catigory: product.catigory,
          main_image: url_for(product.main_image),
          reviews: {
          number_of_reviews: product.reviews.count || 0,
          average_stars: product.reviews.average(:stars) || 0,
        }
      }
      end
      render json: {products: products}
    rescue => e
      render json: {error: e.message}, status: :unprocessable_entity
    end
  end

  private

  def get_reviews(product)
    reviews = product.reviews.all
    reviews.map do |review|
      {
        comment: review.comment,
        stars: review.stars,
        user: review.user.name,
        product_id: review.product_id,
        reviews: {
          number_of_reviews: product.reviews.count || 0,
          average_stars: product.reviews.average(:stars) || 0,
        }
      }
    end
  end

end
