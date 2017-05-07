FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    street { Faker::Address.street_name }
    building_nr { Faker::Address.building_number }
    post_code '50-047'
    city { Faker::Address.city }
    order
  end
end

