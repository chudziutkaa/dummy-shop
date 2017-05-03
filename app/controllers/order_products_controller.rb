class OrderProductsController < ApplicationController
  before_action :set_current_order, only: [ :update, :destroy ]

  def create
    @order = current_order
    @order_product = @order.order_products.new(order_product_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    # @order_product = @order.order_products.find(params[:id])
    @order_product.update_attributes(order_product_params)
    # @order_products = @order.order_products
  end

  def destroy
    # @order_product = @order.order_products.find(params[:id])
    @order_product.destroy
    # @order_products = @order.order_products
  end

  private

  def order_product_params
    params.require(:order_product).permit(:product_id, :quantity)
  end

  def set_current_order
    @order = current_order
    @order_product = @order.order_products.find(params[:id])
    @order_products = @order.order_products
  end
end
