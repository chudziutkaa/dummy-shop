require 'administrate/base_dashboard'

class OrderDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    order_status: Field::String,
    order_products: Field::HasMany,
    user: Field::HasOne,
    id: Field::Number,
    total_price: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :order_status,
    :order_products,
    :user,
    :total_price,
    :created_at,
    :updated_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :order_products
  ].freeze

  FORM_ATTRIBUTES = [
    :user,
    :total_price
  ].freeze
end
