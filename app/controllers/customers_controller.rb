class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @id = params[:id]
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(params[:customer])
    redirect_to customers_path
  end  

  def new
    @customer = Customer.new
  end
  
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:success] = 'New Customer saved successfully'
      redirect_to action:'index'
    else
      render 'new'
    end    
  end
  
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to action:'index'
  end
  
  
end
