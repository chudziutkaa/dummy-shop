class OrderStatus < ActiveRecord::Base
  validates :name, inclusion: { in: %w(Cart Completed) }

  has_many :orders
end
