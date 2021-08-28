class Admin::CustomersController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @customers = Customer.page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
       flash[:notice] = "会員情報の更新が完了しました"
       redirect_to admins_customers_path
    else
      render :edit
    end
    
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :first_kana, :last_kana, :post_code, :address, :phone ,:email,:is_valid)
  end
end
