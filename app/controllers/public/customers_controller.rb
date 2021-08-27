class Public::CustomersController < ApplicationController
  #顧客側会員ページ

  before_action :authenticate_customer!

  def show
    # @customer = Customer.find_by(id: session[:customer_id])
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end
<<<<<<< HEAD
  
  #顧客退会画面
  def unsubscribe
    @customer = current_customer
  end

  #顧客退会処理
  def withdraw
    @customer = current_customer
    @customer.update(is_active: false)
    reset_session
    redirect_to root_path
    flash[:notice]='またのご利用お待ちしております。'
  end
=======
>>>>>>> origin/develop

  def update
    # @customer = Customer.current_customer.find(params[:id])
    @customer = current_customer
    if@customer.update(customer_params)
      # flash[:notice] = "You have updated user successfully."
      # マイページにページに飛ばす

    # redirect_to customers_my_page_path(@customer.id)
    redirect_to customers_my_page_path(@customer)
    flash[:notice]='ユーザー情報を修正しました。'
    else
      render :edit
    end
  end





  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:telephone_number,:email)
  end

<<<<<<< HEAD
end
=======
end
>>>>>>> origin/develop
