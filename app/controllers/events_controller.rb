class EventsController < ApplicationController
    # soon will be lemited based on the user data
    def index
        era = Era.find(params[:era_id])
        events = era.sub_eras.map(&:events).flatten
        events = events.map do |event|
            {
                id: event.id,
                sub_era: I18n.locale.to_s == 'ar' ? event.sub_era.arabic_name : event.sub_era.english_name,
                title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
                cover_image: url_for(event.cover_image),
            }
        end
        render json: events
    end

    def show
        event = Event.includes(:event_sections).find(params[:id])
        user = User.find(params[:user_id])
        saved = user.saveds.find_by(event_id: event.id)
        saved = saved ? true : false
        event = {
            id: event.id,
            title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
            info: I18n.locale.to_s == 'ar' ? event.arabic_info : event.english_info,
            start_date: event.start_date,
            end_date: event.end_date,
            saved: saved,
            sections: event.event_sections.map do |section|
                {
                    id: section.id,
                    title: I18n.locale.to_s == 'ar' ? section.arabic_title : section.english_title,
                    content: I18n.locale.to_s == 'ar' ? section.arabic_content : section.english_content
                }
            end
        }
        render json: event
    end

    def see_all
        era = Era.find(params[:era_id])
        events = era.sub_eras.map(&:events).flatten
        events = events.map do |event|
            {
                id: event.id,
                sub_era: I18n.locale.to_s == 'ar' ? event.sub_era.arabic_name : event.sub_era.english_name,
                title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
                cover_image: url_for(event.cover_image),
            }
        end
        render json: events
    end

    def search
        search_params = params.require(:search).permit(:arabic_title, :english_title)

        events = Event.where('arabic_title LIKE :search OR english_title LIKE :search', search: "%#{search_params.values.first}%")
        events = events.map do |event|
          {
            id: event.id,
            sub_era: I18n.locale.to_s == 'ar' ? event.sub_era.arabic_name : event.sub_era.english_name,
            name: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
            cover_image: url_for(event.cover_image),
          }
        end
        render json: events
      end

      def add_points
        event = Event.find(params[:id])
        user = User.find(params[:user_id])

        event.increment!(:points)
        if event.character
            event.character.increment!(:points)
            event.character.save
        end

        if event.products
            event.products.each do |product|
                product.increment!(:points)
                product.save
            end
        end

        user_event = event.character.character_points.find_or_initialize_by(user: user)
        user_event.increment!(:points)
        user_event.set_tier(user)
        user_event.save

        user_event = event.event_points.find_or_initialize_by(user: user)
        user_event.increment!(:points)
        user_event.set_tier(user)
        user_event.save

        render json: { message: 'success' }
      end

      def get_4_recommended_events
        era = Era.find(params[:era_id])
        user = User.find(params[:user_id])
        events = user.get_4_recommended_events(era)
        events = events.map do |event|
            {
                id: event.id,
                title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
                cover_image: url_for(event.cover_image)
            }
        end
        render json: events
    end

end
