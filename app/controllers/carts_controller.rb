class CartsController < ApplicationController
  def index
    @order_products = current_order.order_products
  end
end
