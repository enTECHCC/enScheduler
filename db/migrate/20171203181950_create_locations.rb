class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :contact_name

      t.timestamps
    end
  end
end
