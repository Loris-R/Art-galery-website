class CreateArtFairs < ActiveRecord::Migration[7.0]
  def change
    create_table :art_fairs do |t|
      t.text :description
      t.text :programm
      t.text :coordinates

      t.timestamps
    end
  end
end
