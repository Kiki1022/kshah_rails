class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?


  private 

    def current_user
      Stylist.find_by(id: session[:stylist_id])
    end

    def logged_in?
      !!current_user
    end

    def redirect_if_unauthorized
      redirect_to '/' if !logged_in?
    end
 
  end
  






