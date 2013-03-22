class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def login!(id)
    session[:id] = id
  end

  def logout!
    session.delete(:id)
  end

  helper_method :current_user

end
