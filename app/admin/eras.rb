ActiveAdmin.register Era do
  menu priority: 1
  permit_params :name
  filter :id


  index do
    selectable_column
    id_column
    column :name
    column :id
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
