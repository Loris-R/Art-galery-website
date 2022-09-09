class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.string :art_expo_date
      t.string :first_description
      t.string :second_description

      t.timestamps
    end
  end
end
