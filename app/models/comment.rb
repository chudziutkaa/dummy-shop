class Comment < ActiveRecord::Base
  belongs_to :product
  belongs_to :parent, class_name: 'Comment'
  has_many :children, class_name: 'Comment', foreign_key: 'parent_id'

  validates :content, length: { maximum: 150 }

  scope :from_recent, ->{ order('created_at DESC') }
end
