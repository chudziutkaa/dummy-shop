class ProductsController < ApplicationController
  before_action :set_product, only: [ :show ]

  def index
    if params[:sort_params]
      @products = Product.ordered(params[:sort_params])
    else
      @products = Product.all
    end
    @products = @products.page(params[:page])
  end

  def show
    @order_product = current_order.order_products.new
    @comments = @product.comments.from_recent
    @comment = @product.comments.new
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
