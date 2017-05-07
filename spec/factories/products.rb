FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    description 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    Fusce nec mollis ex, nec sodales nulla. 
    Aliquam eget sodales velit, vitae sodales purus. 
    Pellentesque ut tincidunt quam. Vivamus dictum ultrices ante. 
    Duis non tincidunt diam, eu suscipit amet.'
  end

  factory :invalid_product, parent: :product do
    name nil
  end
end

