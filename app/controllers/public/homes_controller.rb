class Public::HomesController < ApplicationController

<<<<<<< HEAD
  #TOP画面に新着商品を表示する
  def top
    @products = Product.all.order(created_at: :desc).limit(4)
=======
  # before_action :authenticate_customer!,except: [:top,:about]

  def top
    @all_items =  Item.where(is_active: true)
    @items = @all_items.page(params[:page]).per(4).reverse_order
    @genres = Genre.all
>>>>>>> origin/develop
  end

  def about
  end
<<<<<<< HEAD

=======
>>>>>>> origin/develop
end
