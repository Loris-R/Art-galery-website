class CreateExhibitorCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :exhibitor_categories do |t|
      t.references :exhibitor, null: false, foreign_key: true
      t.string :category_references

      t.timestamps
    end
  end
end
