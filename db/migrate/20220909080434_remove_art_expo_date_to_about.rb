class RemoveArtExpoDateToAbout < ActiveRecord::Migration[7.0]
  def change
    remove_column :abouts, :art_expo_date

  end
end
