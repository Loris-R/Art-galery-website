class AddDateFairFrToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :date_fair_fr, :string
  end
end
