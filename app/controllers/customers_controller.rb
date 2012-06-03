class CustomersController < ApplicationController
  def create
  	@customer = Customer.create!(params[:customer])
  	redirect_to :root
  end
end
