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
    @item = Item.find(params[:id])
  end

  def top
    @items = Item.all.page(params[:page]).per(20)
    @item = Item.find(params)
  end


  def update
    @item = Item.find(params)
    if @item.update(item_params)
      redirect_to admin_items_index_path(@item)
    else
      render :edit
    end
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_item_path(@item)
  end

private


  def item_params
    params.require(:item).permit(:name, :explanation, :tax_out_price, :image )
  end

end
