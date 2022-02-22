class Customer::OrdersController < ApplicationController
  def new
    if CartItem.exists?(customer_id: current_customer.id)
      @order = Order.new
    else
      redirect_to items_path
    end
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save

    current_customer.cart_items.each do |cart_item|
      @order_items = OrderItem.new
      @order_items.item_id = cart_item.item_id
      @order_items.tax_out_price = cart_item.item.tax_out_price
      @order_items.quantity = cart_item.quantity
      @order_items.order_id = @order.id
      @order_items.save
    end
    # currnt_customer.cart_items.destroy_all
    redirect_to thanx_orders_path
  end

  def log
    @cart_items = CartItem.all
    @customer = current_customer
    @total_payment = 0
    @cart_items.each do |cart_item|
      @total_payment += ((cart_item.item.tax_out_price * cart_item.quantity) * 1.1).floor
    end

    @order = Order.new(order_params)

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
    params.require(:order).permit(:name, :postal_code, :payment_method, :total_payment, :address)
  end
end
