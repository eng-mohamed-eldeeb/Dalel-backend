class SavedController < ApplicationController
  def create
    user = User.find(params[:user_id])
    product = Product.find(saved_params[:product_id]) if saved_params[:product_id]
    event = Event.find(saved_params[:event_id]) if saved_params[:event_id]
    character = Character.find(saved_params[:character_id]) if saved_params[:character_id]
    saved = Saved.create(user: user, product_id: product&.id, event_id: event&.id, character_id: character&.id)
    if saved.save
      render json: saved, status: :created
    else
      render json: saved.errors, status: :unprocessable_entity
    end
  end

  def index
    saveds = Saved.where(user_id: params[:user_id])
    products = saveds.where.not(product_id: nil).map do |saved|
      {
        id: saved.product.id,
        title: I18n.locale.to_s == 'ar' ? saved.product.arabic_title : saved.product.english_title,
        main_image: url_for(saved.product.main_image),
        price: saved.product.price,
        catigory: saved.product.catigory,
      }
    end
    characters = saveds.where.not(character_id: nil).map do |saved|
      {
        id: saved.character.id,
        name: I18n.locale.to_s == 'ar' ? saved.character.arabic_name : saved.character.english_name,
        thumb_image: url_for(saved.character.thumb_image),
      }
    end
    events = saveds.where.not(event_id: nil).map do |saved|
      {
        id: saved.event.id,
        title: I18n.locale.to_s == 'ar' ? saved.event.arabic_title : saved.event.english_title,
        cover_image: url_for(saved.event.cover_image),
      }
    end

    render json: { products: products, characters: characters, events: events }
  end

  def remove
    saved = if params[:saved][:product_id]
              Saved.find_by(user_id: params[:user_id], product_id: params[:saved][:product_id])
            elsif params[:saved][:event_id]
              Saved.find_by(user_id: params[:user_id], event_id: params[:saved][:event_id])
            elsif params[:saved][:character_id]
              Saved.find_by(user_id: params[:user_id], character_id: params[:saved][:character_id])
            end

    if saved
      saved.destroy
      render json: { message: 'Saved item successfully removed.' }, status: :ok
    else
      render json: { ErrorMessage: 'Saved item not found.' }, status: :not_found
    end
  end
  private

  def saved_params
    params.require(:saved).permit(:product_id, :event_id, :character_id)
  end
end
