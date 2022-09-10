class RemoveExpoCatFairFrFromAbout < ActiveRecord::Migration[7.0]
  def change
    remove_column :abouts, :expo_category_fair_fr
  end
end
