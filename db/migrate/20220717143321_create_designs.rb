class CreateDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :designs do |t|
      t.text :description
      t.text :programm
      t.text :coordinates

      t.timestamps
    end
  end
end
