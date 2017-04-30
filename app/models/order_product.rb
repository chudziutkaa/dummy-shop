class OrderProduct < ActiveRecord::Base
  validates :quantity, numericality: { greater_than: 0 }

  belongs_to :product
  belongs_to :order
end
