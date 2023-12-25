ActiveAdmin.register SubEra do
  permit_params :arabic_name, :english_name, :era_id, :arabic_info, :english_info
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
  end
end
  
end
