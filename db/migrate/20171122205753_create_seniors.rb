class CreateSeniors < ActiveRecord::Migration[5.1]
  def change
    create_table :seniors do |t|
      t.text :first_name
      t.text :last_name
      t.text :comment

      t.timestamps
    end
  end
end
