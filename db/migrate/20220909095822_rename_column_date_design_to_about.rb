class RenameColumnDateDesignToAbout < ActiveRecord::Migration[7.0]
  def change
    rename_column :abouts, :date_design, :date_design_en
  end
end
