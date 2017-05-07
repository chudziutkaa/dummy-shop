module SpecTestHelper
  def current_order
    current_order = FactoryGirl.create :order
    session[:order_id] = current_order.id
  end
end

RSpec.configure do |config|
  config.include SpecTestHelper, type: :controller
end
