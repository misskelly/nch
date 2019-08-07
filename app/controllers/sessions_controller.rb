class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.admin?
        redirect_to admin_dashboard_path
      elsif user.manager?
        redirect_to manager_dashboard_path
      else user.default?
        redirect_to user_dashboard_path
      end
    else
      flash[:error] = "Incorrect user name or password"
      redirect_to login_path
    end
  end
end
