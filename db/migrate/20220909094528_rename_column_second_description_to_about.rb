class RenameColumnSecondDescriptionToAbout < ActiveRecord::Migration[7.0]
  def change
    rename_column :abouts, :second_description, :second_description_en
  end
end
