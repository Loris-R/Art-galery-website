class RenameColumnDateFairToAbout < ActiveRecord::Migration[7.0]
  def change
    rename_column :abouts, :date_fair, :date_fair_en
  end
end
