ActiveAdmin.register ArtFairExhibitor do

  index do
    selectable_column
    column :id
    column :artist_name
    column :description
    column :url
    column :created_at
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :art_fair_id, :artist_name, :description, :url
  #
  # or
  #
  # permit_params do
  #   permitted = [:art_fair_id, :artist_name, :description, :url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs "Art fair Exhibitor" do
      f.hidden_field :art_fair_id, value: ArtFair.all.last.nil? ? nil : ArtFair.all.last.id
      f.input :artist_name
      f.input :description
      f.input :url
      f.inputs "Ajoutez des photos" do
        f.input :photos, as: :file, input_html: { multiple: true }
      end
    end
    f.actions
  end
  
end
