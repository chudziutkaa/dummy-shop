class Order < ActiveRecord::Base
  belongs_to :order_status
  has_many :order_products

  
  before_create :set_order_status

  def total_price
    order_products.collect(&:price).sum
  end

  private

  def set_order_status
    self.order_status_id = 1
  end
end
