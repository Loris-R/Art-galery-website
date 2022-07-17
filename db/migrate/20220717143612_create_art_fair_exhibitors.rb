class CreateArtFairExhibitors < ActiveRecord::Migration[7.0]
  def change
    create_table :art_fair_exhibitors do |t|
      t.references :art_fair, null: false, foreign_key: true
      t.string :artist_name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
