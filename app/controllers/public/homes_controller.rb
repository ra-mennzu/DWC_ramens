class Public::HomesController < ApplicationController

  # before_action :authenticate_customer!,except: [:top,:about]

  def top
    @all_items =  Item.where(is_active: true)
    @items = @all_items.page(params[:page]).per(4).reverse_order
    @genres = Genre.all
  end

  def about
  end
end