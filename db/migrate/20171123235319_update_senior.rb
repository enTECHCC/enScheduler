class UpdateSenior < ActiveRecord::Migration[5.1]
  def change
    add_column :seniors, :last_initial, :text
    add_column :seniors, :info, :text

    remove_column :seniors, :last_name, :text
    remove_column :seniors, :comment, :text
  end
end
