class AddDateDesignFrToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :date_design_fr, :string
  end
end
