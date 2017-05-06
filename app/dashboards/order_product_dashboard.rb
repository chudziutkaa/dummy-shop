require 'administrate/base_dashboard'

class OrderProductDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    product: Field::BelongsTo,
    order: Field::BelongsTo,
    id: Field::Number,
    quantity: Field::Number,
    price: Field::String.with_options(searchable: false)
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :product,
    :order,
    :id,
    :quantity
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :product,
    :order,
    :id,
    :quantity,
    :price
  ].freeze
end