class RebuildDataBase < ActiveRecord::Migration[7.0]
  def change
    remove_reference :exhibitor_categories, :exhibitor, index: true
    remove_reference :exhibitor_categories, :category, index: true
    drop_table :exhibitor_categories
    drop_table :categories
    drop_table :exhibitors
  end
end
