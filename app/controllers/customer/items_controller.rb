class Customer::ItemsController < ApplicationController
  def top
  end

  def about
  end

  
  def index
    @items = Item.all
    
  end

  def show
    @item = Item.find(params[:id])
    #カートに追加するため
    @cart_items = CartItem.new
  end
  
end
