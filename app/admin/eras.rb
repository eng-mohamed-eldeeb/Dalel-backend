ActiveAdmin.register Era do
  menu priority: 2
  permit_params :name
  filter :id


  index do
    selectable_column
    id_column
    column :name
    column :id
    column :sub_eras do |era|
      era.sub_eras do |sub_era|
        if era.sub_eras.count > 0
          link_to sub_era.english_name, admin_sub_era_path(sub_era)
        else
          "No SubEras"
        end
      end
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
    end
  end
end
