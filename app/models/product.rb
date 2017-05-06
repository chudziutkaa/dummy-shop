class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, length: { maximum: 300 }

  has_many :order_products

  paginates_per 20

  scope :ordered, -> (sort_params) { order(sort_params) }

end
