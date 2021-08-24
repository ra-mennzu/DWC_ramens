class Public::CustomersController < ApplicationController


  def show
    # @customer = Customer.find_by(id: session[:customer_id])
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    # @customer = Customer.current_customer.find(params[:id])
    @customer = current_customer
    @customer.update(customer_params)
      # flash[:notice] = "You have updated user successfully."
      # マイページにページに飛ばす
    # redirect_to customers_my_page_path(@customer.id)
    redirect_to customers_my_page_path(@customer)
  end





  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:telephone_number,:email)
  end
end
