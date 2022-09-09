ActiveAdmin.register About do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_description_en, :second_description_en, :expo_category_fair_en, :expo_category_design_en, :date_design_en, :date_fair_en, :first_description_fr, :second_description_fr, :expo_category_fair_fr, :expo_category_design_fr, :date_design_fr, :date_fair_fr
  #
  # or
  form do |f|
    f.inputs "About" do
      f.input :first_description_en
      f.input :first_description_fr
      f.input :second_description_en
      f.input :second_description_fr
      f.input :expo_category_fair_en
      f.input :expo_category_fair_fr
      f.input :expo_category_design_en
      f.input :expo_category_design_fr
      f.input :date_design_en
      f.input :date_design_fr
      f.input :date_fair_en
      f.input :date_fair_fr
    end
    f.actions
  end

  # permit_params do
  #   permitted = [:first_description_en, :second_description_en, :expo_category_fair_en, :expo_category_design_en, :date_design_en, :date_fair_en, :first_description_fr, :second_description_fr, :expo_category_fair_fr, :expo_category_design_fr, :date_design_fr, :date_fair_fr]
  #  permitted << :other if params[:action] == 'create' && current_user.admin?
  #  permitted
  # end
end
