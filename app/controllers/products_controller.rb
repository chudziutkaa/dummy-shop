class ProductsController < ApplicationController
  before_action :set_product, only: [ :show ]

  def index
    if params[:sort_params]
      @products = Product.ordered(params[:sort_params]).paginate(page: params[:page])
    else
      @products = Product.paginate(page: params[:page])
    end
  end

  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
