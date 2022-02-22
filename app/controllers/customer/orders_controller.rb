class Customer::OrdersController < ApplicationController
  def new
    @order = Order.new
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


  private

  def order_params
    params.require(:order).permit(:name, :postal_code, :payment_method, :total_payment)
  end
end
