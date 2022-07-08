class CreateExhibitors < ActiveRecord::Migration[7.0]
  def change
    create_table :exhibitors do |t|
      t.text :description
      t.string :artist_name
      t.string :url

      t.timestamps
    end
  end
end
