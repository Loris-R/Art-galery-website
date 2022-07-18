class CreateRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :registrations do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :email
      t.string :category

      t.timestamps
    end
  end
end
