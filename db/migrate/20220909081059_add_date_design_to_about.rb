class AddDateDesignToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :date_design, :string
  end
end
