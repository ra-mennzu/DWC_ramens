class Order < ApplicationRecord
  
  belongs_to :customer
  has_many :order_details
  has_many :items, through: :order_details
  
  # お届け先
  def info
    name+ postal_code+ address
  end
  
end
