class CharactersController < ApplicationController
    # get random 10 characters

    def index
        characters = Character.get_random_characters(get_sub_era)
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
        character = {
            id: character.id,
            name: I18n.locale.to_s == 'ar' ? character.arabic_name : character.english_name,
            date_of_birth: character.date_of_birth,
            date_of_death: character.date_of_death,
            info: I18n.locale.to_s == 'ar' ? character.arabic_info : character.english_info,
            thumb_image: url_for(character.thumb_image),
            cover_image: url_for(character.cover_image),
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
