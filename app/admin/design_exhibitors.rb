ActiveAdmin.register DesignExhibitor do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :design_id, :artist_name, :description, :url
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
      f.hidden_field :art_fair_id, value: ArtFair.all.last.nil? ? nil : ArtFair.all.last.id
      f.input :artist_name
      f.input :description
      f.input :url
    end
    f.actions
  end
end
