class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
    # @addresses = current_customer.addresses
  end

  def complete
  end

  def confirm
    @cart_items = current_customer.cart_items
    @shipping_cost = Shipping_cost.Find[params:id]
    @total_payment = current_customer.cart_items.sum(:price)+  @shipping_cost
  end

  def create
    redirect_to orders_path
  end



 private
  # def customer_params
  #   params.require(:customer).permit(:last_name, :first_name,:last_name_kana,:first_name_kana,:postal_code,
  #   :address,:telephone_number,:email)
  # end

end
