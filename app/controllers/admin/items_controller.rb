class Admin::ItemsController < ApplicationController
  def index 
    @items = Item.page(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def show
  end

  def top
  end
end
