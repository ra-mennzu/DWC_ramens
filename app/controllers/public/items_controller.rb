class Public::ItemsController < ApplicationController
  def index
    # @item = Item.find(params[:id])
    @items = Item.all.page(params[:page]).reverse_order
  end

  def show
    @item = Item.find(params[:id])
    # @cart_item = CartItem.new
    
    # cart_itemのcreateアクション ここから
    # @cart_item = CartItem.new（crat_item_params）
    # @cart_item.customer_id = current_user.id
    # if @cart_item.save
    #   redirect_to items_path
    # else
    #   @items = Item.all.page(params[:page]).reverse_order
    #   render 'public/items/index'
    # end
    # private
    # def crat_item_params
      # params.require(:crat_item).permit(:amount)
    # end
    # cart_itemのcreateアクション　ここまで
  end
  

  # private
  # def crat_item_params
  #   params.require(:crat_item).permit(:amount)
  # end
 
end
