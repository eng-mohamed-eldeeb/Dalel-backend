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
      saved.product.as_json.merge({ main_image_url: url_for(saved.product.main_image) }) if saved.product.main_image.attached?
    end
    characters = saveds.where.not(character_id: nil).map do |saved|
      saved.character.as_json.merge({ thumb_image_url: url_for(saved.character.thumb_image) }) if saved.character.thumb_image.attached?
    end
    events = saveds.where.not(event_id: nil).map do |saved|
      saved.event.as_json.merge({ cover_image_url: url_for(saved.event.cover_image) }) if saved.event.cover_image.attached?
    end

    render json: { products: products.compact, characters: characters.compact, events: events.compact }
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
      render json: { errorMessage: 'Saved item not found.' }, status: :not_found
    end
  end
  private

  def saved_params
    params.require(:saved).permit(:product_id, :event_id, :character_id)
  end
end
