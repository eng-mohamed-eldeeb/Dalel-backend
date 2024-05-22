ActiveAdmin.register Event do
    permit_params :type, :arabic_title, :english_title, :start_date, :end_date, :arabic_info, :english_info, :cover_image, :sub_era_id, :character_id, event_sections_attributes: %i[id arabic_title english_title arabic_content english_content _destroy]
  menu priority: 4
  filter :english_title
  controller do
    def create
      @event = build_new_resource
      @event.attributes = permitted_params[:event]

      puts "@event before save: #{@event.inspect}"

      if @event.save
        puts "@event after save: #{@event.inspect}"
        redirect_to admin_event_path(@event), notice: 'Event was successfully created.'
      else
        puts "@event errors: #{@event.errors.full_messages}"
        render :new
      end
    end
  end
  index do
        selectable_column
        id_column
        column :type
        column :arabic_title
        column :english_title
        column :start_date
        column :end_date
        column :arabic_info
        column :english_info
        column :cover_image
        column :sections do |event|
            if event.event_sections
                event.event_sections.each do |section|
                    section.arabic_title
                end
            end
        end
        actions
    end

    form do |f|
        f.inputs do
            f.input :type, as: :select, collection: ['PeaceTreaty', 'War']
            f.input :arabic_title
            f.input :english_title
            f.input :start_date, as: :string, input_html: { value: f.object.start_date.try(:strftime, "%Y-%m-%d") }
            f.input :end_date, as: :string, input_html: { value: f.object.end_date.try(:strftime, "%Y-%m-%d") }
            f.input :arabic_info
            f.input :english_info
            f.input :sub_era_id, as: :select, collection: SubEra.all.map { |se| [se.arabic_name, se.id] }
            f.input :character_id, as: :select, collection: Character.all.map { |c| [c.arabic_name, c.id] }
            f.input :cover_image
            f.inputs 'Sections' do
                f.has_many :event_sections, heading: 'sections', allow_destroy: true do |c|
                    c.input :arabic_title
                    c.input :english_title
                    c.input :arabic_content
                    c.input :english_content
                end
            end
        end
        f.actions
    end

    show do
        attributes_table do
            row :id
            row :type
            row :arabic_title
            row :english_title
            row :start_date
            row :end_date
            row :arabic_info
            row :english_info
            row :cover_image
            row :sections do |event|
                if event.event_sections
                    event.event_sections.each do |section|
                        section.arabic_title
                    end
                end
            end
        end
    end
end
