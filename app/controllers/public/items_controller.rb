class Public::ItemsController < ApplicationController
  def index
    # @item = Item.find(params[:id])
    @items = Item.all.page(params[:page]).reverse_order
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end



 
end
