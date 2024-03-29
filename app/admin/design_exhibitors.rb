ActiveAdmin.register DesignExhibitor do

  index do
    selectable_column
    column :id
    column :artist_name
    column :description_en
    column :description_fr
    column :url
    column :created_at
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :design_id, :artist_name, :description_en, :description_fr, :url, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:design_id, :artist_name, :description, :url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.inputs "Design Exhibitor" do
      f.hidden_field :design_id, value: Design.all.last.nil? ? nil : Design.all.last.id
      f.input :artist_name
      f.input :description_en
      f.input :description_fr
      f.input :url
      f.inputs "Ajoutez une photo" do
        f.input :photo, as: :file
      end
    end
    f.actions
  end
end
