class ApplicationController < ActionController::Base

  helper_method :current_user, :current_admin, :current_manager, :current_sales

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    current_user && current_user.admin?
  end

  def current_manager?
    current_user && current_user.manager?
  end

  def current_sales?
    current_user && current_user.manager? == false && current_user.admin? == false
  end

  def require_admin
    render file: 'public/404', status: 404 unless current_admin?
  end

  def require_manager
    render file: 'public/404', status: 404 unless current_manager?
  end

  def require_sales_user
    render file: 'public/404', status: 404 unless current_sales?

  end
end
