class RenameColumnExpoCAtegoryDesignToAbout < ActiveRecord::Migration[7.0]
  def change
    rename_column :abouts, :expo_category_design, :expo_category_design_en
  end
end
