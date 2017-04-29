class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, length: { maximum: 300 }

  self.per_page = 20

  scope :ordered, -> (sort_params) { order(sort_params) }

end
