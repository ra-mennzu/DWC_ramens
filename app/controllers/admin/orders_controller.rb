class Admin::OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details.all
  end

  def update
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

end
