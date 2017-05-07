FactoryGirl.define do
  factory :order_product do
    product
    order
    quantity 2
  end
end

