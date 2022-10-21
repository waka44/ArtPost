class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @arts = @customer.art.page(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to customer_path(customer.id)
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:name, :body)
  end
end
