ActiveAdmin.register Partner do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description_en, :description_fr, photos: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.inputs "Partenaire" do
      f.input :description_en
      f.input :description_fr
    end
    f.inputs "Ajoutez des photos" do
      f.input :photos, as: :file, input_html: { multiple: true }
    end
    f.actions
  end
end
