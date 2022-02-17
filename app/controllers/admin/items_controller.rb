class Admin::ItemsController < ApplicationController
  
  def new
    @item = Item.new
    
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_index_path(@item)
    else
      render :new
    end
  end

  def index
    @items = Item.all.page(params[:page]).per(20)
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
    params.require(:item).permit(:name, :iexplanation, :item_image, :tax_out_price)
  end
  
end
