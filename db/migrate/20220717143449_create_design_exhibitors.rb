class CreateDesignExhibitors < ActiveRecord::Migration[7.0]
  def change
    create_table :design_exhibitors do |t|
      t.references :design, null: false, foreign_key: true
      t.string :artist_name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
