class CharactersController < ApplicationController
    # get random 10 characters

    def index
        era = Era.find(params[:era_id])
        characters = era.get_4_random_character
        characters = characters.compact.map do |character|
            {
                id: character.id,
                name: I18n.locale.to_s == 'ar' ? character.arabic_name : character.english_name,
                date_of_birth: character.date_of_birth,
                date_of_death: character.date_of_death,
                thumb_image: url_for(character.thumb_image),
            }
        end
        render json: characters
    end


    def show
        user = User.find(params[:user_id])
        saved = user.saveds.find_by(character_id: params[:id])
        saved = saved ? true : false
        character = Character.includes(:character_sections).find(params[:id])
        character_events = character.events
        character_events = character_events.map do |event|
            {
                id: event.id,
                title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
                cover_image: url_for(event.cover_image)
            }
        end
        character = {
            id: character.id,
            name: I18n.locale.to_s == 'ar' ? character.arabic_name : character.english_name,
            date_of_birth: character.date_of_birth,
            date_of_death: character.date_of_death,
            info: I18n.locale.to_s == 'ar' ? character.arabic_info : character.english_info,
            thumb_image: url_for(character.thumb_image),
            cover_image: url_for(character.cover_image),
            character_events: character_events,
            saved: saved,
            sections: character.character_sections.map do |section|
                {
                    id: section.id,
                    title: I18n.locale.to_s == 'ar' ? section.arabic_title : section.english_title,
                    content: I18n.locale.to_s == 'ar' ? section.arabic_content : section.english_content
                }
            end
        }
        render json: character
    end

    def search
        search_params = params.require(:search).permit(:arabic_name, :english_name)

        characters = Character.where('arabic_name LIKE :search OR english_name LIKE :search', search: "%#{search_params.values.first}%")

        characters = characters.map do |character|
          {
            id: character.id,
            sub_era: I18n.locale.to_s == 'ar' ? character.sub_era.arabic_name : character.sub_era.english_name,
            name: I18n.locale.to_s == 'ar' ? character.arabic_name : character.english_name,
            date_of_birth: character.date_of_birth,
            date_of_death: character.date_of_death,
            thumb_image: url_for(character.thumb_image),
          }
        end
        render json: characters
      end

      def see_all
        era = Era.find(params[:era_id])
        characters = era.sub_eras.map(&:characters).flatten
        characters = characters.map do |character|
            {
                id: character.id,
                name: I18n.locale.to_s == 'ar' ? character.arabic_name : character.english_name,
                date_of_birth: character.date_of_birth,
                date_of_death: character.date_of_death,
                thumb_image: url_for(character.thumb_image),
            }
        end
        render json: characters
    end

    def add_points
        character = Character.find(params[:id])
        character.points += 1
        last_event = character.events.last
        if last_event
            last_event.increment!(:points)
        end

        if character.products.any?
            character.products.each do |product|
                product.increment!(:points)
                product.save
            end
        end

        if last_event && last_event.event_points
            user_event_point = last_event.event_points.where(user: User.find(params[:user_id])).first

            if user_event_point
                user_event_point.update(points: user_event_point.points + 1)
            else
                last_event.event_points.create(user: User.find(params[:user_id]), points: 1)
            end
        end

        character.save
        user = User.find(params[:user_id])
        if character.character_points.where(user: user).empty?
            character_point = CharacterPoint.create(character: character, user: user, points: 1, seen: true)
            character_point.save
        else
            character_point = character.character_points.where(user: user).first
            character_point.update(points: character_point.points + 1)
        end
        character_point.set_tier(user)
        render json: { message: 'success' }
    end

    def get_recommenderd_four
        user = User.find(params[:user_id])
        era = Era.find(params[:era_id])
        recommended_characters = user.get_4_recommended_characters(era).first(4)
        recommended_characters = recommended_characters.map do |character|
            {
                id: character.id,
                name: I18n.locale.to_s == 'ar' ? character.arabic_name : character.english_name,
                thumb_image: url_for(character.thumb_image),
            }
        end
        render json: recommended_characters
    end

      private

    def get_sub_era
        SubEra.find(params[:sub_era_id])
    end
end
