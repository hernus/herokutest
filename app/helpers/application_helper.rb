module ApplicationHelper

  def signed_in?
    current_user ? true : false
  end  

  def current_user
    if session[:current_user_id] 
      User.find(session[:current_user_id])
    else
      nil
    end  
  end  
  
  def current_user=(user)
    session[:current_user_id] = user.id
  end
  
end
