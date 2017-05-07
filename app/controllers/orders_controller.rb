class OrdersController < ApplicationController
  before_action :set_order, only: [:complete, :show]

  def complete
    @order.update(order_params)
    OrderMailer.order_email(@order.user, @order).deliver
    redirect_to completed_order_path
  end

  def show
  end

  def start_new_session
    session[:order_id] = nil
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:total_price, :order_status, user_attributes: [:email, :street, :building_nr, :post_code, :city])
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
