ActiveAdmin.register Design do

  actions :index, :show, :edit, :update

  index do
    selectable_column
    column :description_en
    column :description_fr
    column :programm_en
    column :programm_fr
    column :coordinates
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description_en, :description_fr, :programm_en, :programm_fr, :coordinates
  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :programm, :coordinates]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs "design" do
      f.input :description_en
      f.input :description_fr
      f.input :programm_en
      f.input :programm_fr
      f.input :coordinates
    end
    f.actions
  end
  
end
