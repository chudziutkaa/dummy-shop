class Order < ActiveRecord::Base
  has_many :order_products
  has_one :user
  accepts_nested_attributes_for :user, update_only: true

  enum order_status: %i(completed cart)

  def total_price
    order_products.collect(&:price).sum
  end

  # scope :categorized, ->(names) { where order_status: names.map { |name| Order.order_statuses[name]} }
  scope :categorized, ->(name){ where order_status: name }
end
