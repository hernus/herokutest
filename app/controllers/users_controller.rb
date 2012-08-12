class UsersController < ApplicationController
  def index
    @users = User.paginate(page:params[:page], per_page:10)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    session[:user_email] = @user.email
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "User created successfully"
      redirect_to users_path
    else
      render edit_user_path
    end      
  end  

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "User saved successfully"
      redirect_to users_path      
    else
      render 'new'
    end  
  end  

  def destroy    
    @user = User.find(params[:id])
    if @user.destroy
      flash[:success] = 'User delete successfully'
    else
      flash[:error] = 'User could not be deleted'
    end
    redirect_to users_path
  end
  
end
