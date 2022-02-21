class Order < ApplicationRecord

  belongs_to :customers
  has_many :order_items, dependent: :destroy

  enum payment_method: { credit_card: 0, transfer: 1 }
end
