class AddExpoCAtegoryFairFrToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :expo_category_fair_fr, :string
  end
end
