class Customer::OrdersController < ApplicationController
  def new
    @order = Order.new
  end





  def index
    @orders = Order.where(customer_id: current_customer.id)
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
