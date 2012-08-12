class JoinController < ApplicationController
  def join
    if params[:user].present?
      @user = User.new(params[:user])
      if @user.save
        render "success"
      else
        flash[:error] = "Could not save due to errors"
        render controller: 'join', action: 'join'
      end   
    else
      @user = User.new
    end  
  end
  

  def welcome
    @user = User.find(params[:id])
  end
end
