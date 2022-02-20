class Customer::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    @total_price = 0
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.save
    redirect_to customer_cart_items_path

  end


  private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :quantity)
  end

end
