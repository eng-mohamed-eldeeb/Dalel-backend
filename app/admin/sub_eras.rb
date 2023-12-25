ActiveAdmin.register SubEra do
  permit_params :arabic_name, :english_name, :era_id, :arabic_info, :english_info, sections_attributes: %i[id arabic_title english_title arabic_content english_content _destroy]
  menu priority: 3
  filter :name
  
index do
  selectable_column
  id_column
  column :arabic_name
  column :english_name
  column :era_id
  column :arabic_info
  column :english_info
  column :sections do |sub_era|
    if sub_era.sections
      sub_era.sections.each do |section|
        section.arabic_title
      end
    end
  end
  column :Era do |sub_era|
    sub_era.era.name
  end
  actions
end

form do |f|
  f.inputs do
    f.input :era_id, as: :select, collection: Era.all.map {|era| [era.name, era.id]}
    f.input :arabic_name
    f.input :english_name
    f.input :arabic_info
    f.input :english_info
    f.inputs 'Sections' do
      f.has_many :sections, heading: 'sections', allow_destroy: true do |c|
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
    row :era_id
    row :arabic_info
    row :english_info
    row :Era do |sub_era|
      sub_era.era.name
    end
    row :sections do |sub_era|
      if sub_era.sections
        sub_era.sections.each do |section|
          section.arabic_title
        end
      end
    end
  end
end
  
end
