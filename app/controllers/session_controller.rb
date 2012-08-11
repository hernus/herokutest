class SessionController < ApplicationController

  def login 
    if params[:user]
      @user = User.new(params[:user])
      db_user = User.find_by_email(@user.email)
      if db_user && (db_user.password == @user.password)
        session[:current_user_id] = db_user.id
        redirect_to root_path
      else
        flash[:error] = "Wrong password or email"
      end          
    end   
  end
  
  def logout
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
