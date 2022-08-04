class AddI18nColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :art_fair_exhibitors, :description_fr, :text
    rename_column :art_fair_exhibitors, :description, :description_en

    add_column :design_exhibitors, :description_fr, :text
    rename_column :design_exhibitors, :description, :description_en

    add_column :art_fairs, :description_fr, :text
    add_column :art_fairs, :programm_fr, :text
    rename_column :art_fairs, :description, :description_en
    rename_column :art_fairs, :programm, :programm_en

    add_column :designs, :description_fr, :text
    add_column :designs, :programm_fr, :text
    rename_column :designs, :description, :description_en
    rename_column :designs, :programm, :programm_en

    add_column :partners, :description_fr, :text
    rename_column :partners, :description, :description_en
  end
end
