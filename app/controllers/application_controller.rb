class ApplicationController < ActionController::Base

  helper_method :current_user, :current_admin, :current_manager

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    current_user && current_user.admin?
  end

  def current_manager?
    current_user && current_user.manager?
  end

end
