module Admin
  class OrdersController < Admin::ApplicationController
    # def index
    #   resources = Order.all
    # resources = Order.where(total_price: params[:order_status]).page(params[:page]).per(records_per_page)
    #   page = Administrate::Page::Collection.new(dashboard, order: order)

    #   render locals: {
    #     resources: resources.page(params[:page]).per(records_per_page),
    #     page: page
    #   }
    # end

    # def filter
    #   # resources = Order.categorized(params[:order_status]).page(params[:page]).per(records_per_page)
    #   resources = Order.where(total_price: params[:order_status]).page(params[:page]).per(records_per_page)
    #   page = Administrate::Page::Collection.new(dashboard, order: order)

    #   render locals: {
    #     resources: resources,
    #     page: page
    #   }
    # end

    private

    def resource_params
      params.require(resource_name).permit(dashboard.permitted_attributes.concat(:order_status))
    end
  end
end
