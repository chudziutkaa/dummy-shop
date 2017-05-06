module Admin
  class ProductsController < Admin::ApplicationController
    def update
      @product = Product.find(params[:id])
      @product.update(product_params)
      redirect_to admin_products_path
    end

    private

    def product_params
      params.require(:product).permit(:name, :price, :description)
    end
  end
end
