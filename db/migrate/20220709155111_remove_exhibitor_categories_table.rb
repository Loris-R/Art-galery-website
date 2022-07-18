class RemoveExhibitorCategoriesTable < ActiveRecord::Migration[7.0]
  def change
    # remove_column :exhibitor_categories, :category_references
    # add_reference :exhibitor_categories, :category, index: true
  end
end
