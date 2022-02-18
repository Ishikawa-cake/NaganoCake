class Admin::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:id])
  end

  def new
    @item = Item.new
  end




  def edit
    @item = Item.find(params[:id])
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

  def destroy
    @item = Item.find(params)
    @item.destroy
    redirect_to admin_items_index_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :explanation, :image_id, :tax_out_price)
  end

end
