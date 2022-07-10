ActiveAdmin.register Exhibitor do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :artist_name, :description, :url, category_ids: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :artist_name, :url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column :artist_name
    column :description
    column :url
    actions
  end

  form do |f|
    f.inputs "Exposant" do
      f.input :artist_name
      f.input :description
      f.input :url
    end
    f.inputs "categories" do
      f.input :category_ids, as: :check_boxes, collection: Category.all
    end
    f.actions
  end
  
end
