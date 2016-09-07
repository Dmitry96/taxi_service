class AddHomeToOders < ActiveRecord::Migration
  def change
    add_column :orders, :home_adress, :string
  end
end
