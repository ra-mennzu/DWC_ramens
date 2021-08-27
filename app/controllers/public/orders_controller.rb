class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
    # @addresses = current_customer.addresses
  end

  def complete
  end

  def confirm
  end

  def create
  end

 private
  # def customer_params
  #   params.require(:customer).permit(:last_name, :first_name,:last_name_kana,:first_name_kana,:postal_code,
  #   :address,:telephone_number,:email)
  # end

end
