class Customer::HomesController < ApplicationController


  def top
    @items = Item.order(created_at: :desc).limit(4)
    
    
  end

  def about
  end
  
  private

  def home_params
    params.require(:home).permit(:name, :tax_out_price, :image)
  end
  
end


