class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
    @addresses = current_customer.address.all
  end

  def confirm
    @order = current_customer.order.new(order_params)
    @cart_items = current_customer.cart_items


    cart_item_amount = 0
    current_customer.cart_items.all.each do |cart_item|
    cart_item_amount =  cart_item_amount+(cart_item.item.price*cart_item.amount)
    end

    @order.total_payment =((cart_item_amount+  shipping_cost) *1.10).ceil




    if params[:order][:customer_address] == 0
      @order.postal_code= current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.last_name+ current_customer.first_name
    elsif
      params[:order][:customer_address] == 1
      @order1 = Address.Find_by(params[:where])
      @order.postal_code=  @order1.postal_code
      @order.address =  @order1.address
      @order.name =  @order1.last_name+  @order1.first_name
    elsif
      params[:order][:customer_address] == 2
      @order2 = Order.new(order2_params)
      @order.postal_code= @order2.postal_code
      @order.address = @order2.address
      @order.name = @order2.name

    end



  end

  def create
    redirect_to orders_path
  end

  def complete
  end


 private
  def order_params
    params.require(:order).permit(:payment_method)
  end



  def order2_params
    params.require(:order).permit(:postal_code,:address,:name)
  end

end
