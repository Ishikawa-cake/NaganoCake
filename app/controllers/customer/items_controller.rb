class Customer::ItemsController < ApplicationController
  def top
  end

  def about
  end

  def index
    @item = Item.find(params[:id])
  end

  def show
  end
end
