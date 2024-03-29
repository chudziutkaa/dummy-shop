class User < ActiveRecord::Base
  validates_format_of :street, with: /\A[A-Z]\D{1,}$\Z/i, presence: true
  validates :building_nr, presence: true, numericality: { greater_than: 0 }
  validates_format_of :post_code, with: /\A\d{2}-\d{3}$\Z/i, presence: true
  validates_format_of :city, with: /\A[A-Z]\D{1,}$\Z/i, presence: true
  validates_format_of :email, with: /\A^.+@.+$\Z/i

  belongs_to :order

  def readonly?
    persisted?
  end
end
