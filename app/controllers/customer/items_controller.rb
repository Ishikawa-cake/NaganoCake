class Customer::ItemsController < ApplicationController
  def top
  end

  def about
  end

  
  def index

    @item = Item.find(params[:id])
    @items = Item.all
    

  end

  def show
    @item = Item.find(params[:id])
    #カートに追加するため
    @cart_items = CartItem.new
  end
  
end
