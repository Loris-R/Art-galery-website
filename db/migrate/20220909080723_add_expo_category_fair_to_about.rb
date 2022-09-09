class AddExpoCategoryFairToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :expo_category_fair, :string
  end
end
