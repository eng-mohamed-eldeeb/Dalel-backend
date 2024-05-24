ActiveAdmin.register Character do
    permit_params :arabic_name, :english_name, :sub_era_id, :date_of_birth, :date_of_death, :arabic_info, :english_info, :thumb_image, :cover_image, character_sections_attributes: %i[id arabic_title english_title arabic_content english_content _destroy]
    menu priority: 4
    filter :name
    filter :sub_era, as: :select, collection: SubEra.all.map {|sub_era| [sub_era.arabic_name, sub_era.id]}

    index do
        selectable_column
        id_column
        column :arabic_name
        column :english_name
        column :sub_era_id
        column :date_of_birth
        column :date_of_death
        column :arabic_info
        column :english_info
        column :thumb_image, width: 50
        column :sections do |character|
        if character.character_sections
            character.character_sections.each do |section|
            section.arabic_title
            end
        end
        end
        column :SubEra do |character|
        character.sub_era.arabic_name
        end
        actions
    end

    form do |f|
        f.inputs do
        f.input :sub_era_id, as: :select, collection: SubEra.all.map {|sub_era| [sub_era.arabic_name, sub_era.id]}
        f.input :arabic_name
        f.input :english_name
        f.input :date_of_birth, as: :string, input_html: { value: f.object.date_of_birth.try(:strftime, "%Y-%m-%d") }
        f.input :date_of_death, as: :string, input_html: { value: f.object.date_of_death.try(:strftime, "%Y-%m-%d") }
        f.input :arabic_info
        f.input :english_info
        f.input :thumb_image
        f.input :cover_image
        f.inputs 'Sections' do
            f.has_many :character_sections, heading: 'sections', allow_destroy: true do |c|
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
        row :arabic_name
        row :english_name
        row :date_of_birth
        row :date_of_death
        row :sub_era_id
        row :arabic_info
        row :english_info
        row :thumb_image
        row :SubEra do |character|
            character.sub_era.arabic_name
        end
        row :sections do |character|
            if character.character_sections
            character.character_sections.each do |section|
                section.arabic_title
            end
            end
        end
        end
    end
    end
