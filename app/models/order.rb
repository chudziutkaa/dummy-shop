class Order < ActiveRecord::Base
  has_many :order_products
  has_one :user

  enum order_status: %i(:completed, :cart)

  def total_price
    order_products.collect(&:price).sum
  end

end
