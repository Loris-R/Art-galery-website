class AddSecondDescriptionFrToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :second_description_fr, :string
  end
end
