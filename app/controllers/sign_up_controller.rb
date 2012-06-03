class SignUpController < ApplicationController
  def index
  end

  def create
  end

  def new
  	@customer = Customer.new()
  end
end
