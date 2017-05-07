require 'administrate/base_dashboard'

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    order: Field::BelongsTo,
    id: Field::Number,
    email: Field::String,
    street: Field::String,
    building_nr: Field::Number,
    post_code: Field::String,
    city: Field::String
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :order,
    :id,
    :street,
    :building_nr
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :order,
    :id,
    :email,
    :street,
    :building_nr,
    :post_code,
    :city
  ].freeze
end
