class EventsController < ApplicationController
    # soon will be lemited based on the user data
    def index
        era = Era.find(params[:era_id])
        happend_on_this_day = era.get_events_happed_on_this_day
        era_events = era.get_4_random_events
        if happend_on_this_day && happend_on_this_day.length == 0
            events = Event.includes(:event_sections).order("RANDOM()").all.limit(3)
            events = events.map do |event|
                {
                    id: event.id,
                            title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
                    cover_image: url_for(event.cover_image)
                }
            end
            render json: events
        elsif happend_on_this_day && happend_on_this_day.length >= 2
            events = []
            for i in 0..1
                events[i] = {
                    id: happend_on_this_day[i].id,
                    title: I18n.locale.to_s == 'ar' ? happend_on_this_day[i].arabic_title : happend_on_this_day[i].english_title,
                    cover_image: url_for(happend_on_this_day[i].cover_image),
                    on_this_day: true
                }
            end
            render json: events
        else
            event = Event.first
            event = {
                id: event.id,
                title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
                cover_image: url_for(event.cover_image)
            }

            happend_on_this_day = {
                id: happend_on_this_day[0].id,
                title: I18n.locale.to_s == 'ar' ? happend_on_this_day[0].arabic_title : happend_on_this_day[0].english_title,
                cover_image: url_for(happend_on_this_day[0].cover_image),
                on_this_day: true
            }

            render json: [happend_on_this_day, event]

        end
    end

    def show
        event = Event.includes(:event_sections).find(params[:id])

        event = {
            id: event.id,
            title: I18n.locale.to_s == 'ar' ? event.arabic_title : event.english_title,
            info: I18n.locale.to_s == 'ar' ? event.arabic_info : event.english_info,
            start_date: event.start_date,
            end_date: event.end_date,
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
        event.points = event.points + 1
        event.save
        if event.event_points.where(user: user).exists?
            user_event = event.event_points.where(user: user).first
            user_event.points = user_event.points + 1
            user_event.save
        else
            user_event = EventPoint.create(user_id: user.id, event_id: event.id, points: 1)
        end
        user_event.set_tier(user)
        render json: { points: user_event.points }
      end

end
