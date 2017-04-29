class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, length: { maximum: 300 }
end
