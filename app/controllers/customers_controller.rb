class CustomersController < ApplicationController


  def show
    # @customer = Customer.find_by(id: session[:customer_id])
    @customer = current_customer
  end



end
