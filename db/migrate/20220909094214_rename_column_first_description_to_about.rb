class RenameColumnFirstDescriptionToAbout < ActiveRecord::Migration[7.0]
  def change
    rename_column :abouts, :first_description, :first_description_en
  end
end
