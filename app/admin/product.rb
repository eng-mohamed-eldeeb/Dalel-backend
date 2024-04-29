ActiveAdmin.register Product do
  menu priority: 4
  permit_params :arabic_title, :english_title, :price, :arabic_description, :english_description, :era_id, :sub_era_id, :character_id, :event_id, :tier, :catigory, :main_image, :secondary_image, :thirdary_image
  filter :id
  filter :arabic_title
  filter :english_title
  filter :price
  filter :arabic_description
  filter :english_description
  filter :era
  filter :sub_era
  filter :character
  filter :event
  index do
    selectable_column
    id_column
    column :arabic_title
    column :english_title
    column :price
    column :arabic_description
    column :english_description
    column :era
    column :sub_era
    column :character
    column :event
    column :tier
    column :type
    column :main_image do |product|
      image_tag url_for(product.main_image), width: 100
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :arabic_title
      f.input :english_title
      f.input :price
      f.input :arabic_description
      f.input :english_description
      f.input :era, as: :select, collection: Era.all.map { |era| [era.name, era.id] }
      f.input :sub_era, as: :select, collection: SubEra.all.map { |sub_era| [sub_era.arabic_name, sub_era.id] }
      f.input :character, as: :select, collection: Character.all.map { |character| [character.arabic_name, character.id] }
      f.input :event, as: :select, collection: Event.all.map { |event| [event.arabic_title, event.id] }
      f.input :tier
      f.input :catigory, as: :select, collection: Product.catigories.keys
      f.input :main_image, as: :file, input_html: { accept: 'image/*' }
      f.input :secondary_image, as: :file, input_html: { accept: 'image/*' }
      f.input :thirdary_image, as: :file, input_html: { accept: 'image/*' }
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :arabic_title
      row :english_title
      row :price
      row :arabic_description
      row :english_description
      row :era
      row :sub_era
      row :character
      row :event
      row :tier
      row :type
      row :main_image do |product|
        image_tag url_for(product.main_image), width: 100
      end
      row :secondary_image do |product|
        image_tag url_for(product.secondary_image), width: 100
      end
      row :thirdary_image do |product|
        image_tag url_for(product.thirdary_image), width: 100
      end
    end
  end

end
