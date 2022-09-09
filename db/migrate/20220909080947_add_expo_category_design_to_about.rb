class AddExpoCategoryDesignToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :expo_category_design, :string
  end
end
