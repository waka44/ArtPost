class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @arts = @customer.arts
  end

  def edit
  end
end
