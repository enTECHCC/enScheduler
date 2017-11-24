class UpdateSenior < ActiveRecord::Migration[5.1]
  def change
    change_table :seniors do |t|
      remove_column :last_name
      remove_column :comment
      add_column :last_intial
      add_column :info
    end
  end
end
