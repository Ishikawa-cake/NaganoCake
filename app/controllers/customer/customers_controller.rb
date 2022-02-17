class Customer::CustomersController < ApplicationController
  def edit
    #@customer = Customer.find(params[:id])
  end

  def show
    @customers = Customer.all
    # @customer = Customer.find(params[:id])
  end


  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :kana_family_name, :kana_first_name, :postal_code, :address, :tel, :email)
  end

end
