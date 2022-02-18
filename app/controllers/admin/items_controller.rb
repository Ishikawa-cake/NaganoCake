class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end
  

  def edit
  end

  def show
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_item_path(@item)
  end

private 
 
 
  def item_params
    params.require(:item).permit(:name, :explanation, :tax_out_price, :image_id )
  end

end
