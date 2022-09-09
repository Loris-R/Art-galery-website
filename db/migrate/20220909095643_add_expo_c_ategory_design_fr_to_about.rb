class AddExpoCAtegoryDesignFrToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :expo_category_design_fr, :string
  end
end
