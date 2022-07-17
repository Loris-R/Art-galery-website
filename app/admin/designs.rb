ActiveAdmin.register Design do

  actions :index, :show, :edit, :update

  index do
    selectable_column
    column :description
    column :programm
    column :coordinates
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description, :programm, :coordinates
  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :programm, :coordinates]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
