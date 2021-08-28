class Admin::OrderDetailsController < ApplicationController
  
  def update
    @order_detail = Order.find(params[:id])
    @order_details = @order.order_details
    @order = @order_detail.order
    @order.update(order_detail_params)
    if @order_detail.making_status == "制作中"
       @order.status = "制作中"
       @order.save
    elsif @orders.count == making_ds.count
      @order.status = "発送準備中"
      @order.save
    else
    end
    redirect_to request.referer
  end
  
  private
  
  def order_details_params
    params.require(:order_detail).permit(:making_status)
  end
  
end
