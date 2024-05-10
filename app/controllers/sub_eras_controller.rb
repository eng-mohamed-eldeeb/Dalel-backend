class SubErasController < ApplicationController
  def index
    era = Era.find(params[:era_id])
    sub_eras = era.sub_eras
    render json: {
      name: I18n.locale.to_s == 'ar' ? sub_era.arabic_name : sub_era.english_name,
      info: I18n.locale.to_s == 'ar' ? sub_era.arabic_info : sub_era.english_info
    }
  end

  def show
    sub_era = SubEra.find(params[:id])
    eight_characters = sub_era.get_characters
    characters_to_be_returned = eight_characters.map do |character|
      {
        id: character.id,
        name: I18n.locale.to_s == 'ar' ? character.arabic_name : character.english_name,
        thumb_image: url_for(character.thumb_image)
      }
    end

    eight_events = sub_era.get_events
    events_to_be_returned = eight_events.map do |event|
      {
        id: event.id,
        title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
        image: url_for(event.cover_image)
      }
    end

    render json: {
      sub_era: {
        id: sub_era.id,
        name: I18n.locale.to_s == 'ar' ? sub_era.arabic_name : sub_era.english_name,
        info: I18n.locale.to_s == 'ar' ? sub_era.arabic_info : sub_era.english_info,
        era_id: sub_era.era_id,
        sections: serialize_sections(sub_era.sections, I18n.locale)
      },
      character: characters_to_be_returned,
      events: events_to_be_returned
    }
  end

  private

  def serialize_sub_eras(sub_eras)
    sub_eras.map do |sub_era|
      {
        en: serialize_language(sub_era, :english),
        ar: serialize_language(sub_era, :arabic)
      }
    end
  end

  def serialize_language(sub_era, language)
    {
      name: sub_era.send("#{language}_name"),
      info: sub_era.send("#{language}_info"),
      sections: serialize_sections(sub_era.sections, language)
    }
  end

  def serialize_sections(sections, language)
    sections.map do |section|
      {
        title: section.send("#{language}_title"),
        content: section.send("#{language}_content")
      }
    end
  end
end
