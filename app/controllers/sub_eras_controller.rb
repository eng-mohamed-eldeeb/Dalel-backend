class SubErasController < ApplicationController
  def index
    era = Era.find(params[:era_id])
    sub_eras = era.sub_eras
    render json: serialize_sub_eras(sub_eras)
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
