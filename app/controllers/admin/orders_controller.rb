class Admin::OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @orders = @order.order_detail
  end

  def update
    @order = Order.find(params[:id])
    @order_details = @order.order_details
    @order.update(order_params)
    if @order.order_status == "入金待ち"
       @order_details.each do |order_detail|
        order_detail.making_status = "着手不可"
        order_detail.save
      end
    end
    redirect_to admin_order_path
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

end
