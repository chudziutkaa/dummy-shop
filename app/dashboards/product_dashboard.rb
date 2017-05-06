require 'administrate/base_dashboard'

class ProductDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    price: Field::String.with_options(searchable: false),
    description: Field::Text
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :price
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :price,
    :description
  ].freeze

  FORM_ATTRIBUTES = [
    :name,
    :price,
    :description
  ].freeze
end
