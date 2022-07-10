ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :admin
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :admin]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    # column :id
    column :email
    # column :name
    column :created_at
    column :admin
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :email
      f.input :password
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :password, :email, :admin
end
