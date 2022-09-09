class RenameColumnExpoCAtegoryFairToAbout < ActiveRecord::Migration[7.0]
  def change
    rename_column :abouts, :expo_category_fair, :expo_category_fair_en
  end
end
