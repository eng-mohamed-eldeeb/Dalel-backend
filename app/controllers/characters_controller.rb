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
    private

    def get_sub_era
        SubEra.find(params[:sub_era_id])
    end
end
