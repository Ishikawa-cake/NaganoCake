class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.order(created_at: :desc).page(params[:page]).per(8)
  end

  def show
    # @order = Order.find(params[id])
  end
end
