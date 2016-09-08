class CreateServiceQualities < ActiveRecord::Migration
  def change
    create_table :service_qualities do |t|
      t.string :theme
      t.string :your_name
      t.string :phone_number
      t.string :your_email_adress
      t.string :comment

      t.timestamps null: false
    end
  end
end
