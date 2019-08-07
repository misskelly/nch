class UsersController < ApplicationController

  def login
    if current_admin?
      redirect_to admin_dashboard_path
      flash[:success] = "#{current_user.name} is logged in."
    elsif current_manager?
      redirect_to manager_dashboard_path
      flash[:success] = "#{current_user.name} is logged in."
    elsif current_user
      redirect_to user_dashboard_path
      flash[:success] = "#{current_user.name} is logged in."
    end
  end

  def logout
    session.delete(:cart)
    flash[:success] = "#{current_user.name} is now logged out!"
    session[:user_id] = nil
    redirect_to home_path
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

end
