class Customer::OrdersController < ApplicationController
  def new
  end

  def log
  end

  def index
    @orders = Order.all
  end

  def thanx
  end

  def show
    @order = Order.find(params[:id])
  end

end
