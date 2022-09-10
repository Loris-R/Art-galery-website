class RemoveExpoCatDesignEnFromAbout < ActiveRecord::Migration[7.0]
  def change
    remove_column :abouts, :expo_category_design_en
  end
end
