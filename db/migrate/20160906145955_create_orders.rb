class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	
    	t.string :username
    	t.string :phone_number
    	t.string :adress_from
    	t.string :adress_to
    	
      t.timestamps null: false
    end
  end
end
