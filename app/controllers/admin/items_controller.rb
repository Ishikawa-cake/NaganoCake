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

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path(@item)
    else
      render "new"
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_items_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_path
  end

private


  def item_params
    params.require(:item).permit(:name, :explanation, :tax_out_price, :image )
  end

end
