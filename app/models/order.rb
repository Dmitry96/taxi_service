class Order < ActiveRecord::Base

  validates :phone_number, :adress_from, :adress_to, presence: true


  default_scope -> { order('created_at DESC') }
end
