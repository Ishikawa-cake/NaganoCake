class Item < ApplicationRecord

  has_many :order_items, dependent: :destroy
  has_many :cart_items, dependent: :destroy

  
  
  has_one_attached :image
  
  

end
