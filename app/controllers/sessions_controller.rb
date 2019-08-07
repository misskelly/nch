class SessionsController < ApplicationController

  def new
    if current_user
      flash[:notice] = 'You are already logged in!'
      login_redirect(current_user)
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      flash[:success] = "#{user.name} is now logged in!"
      login_redirect(user)
    else
      flash[:notice] = 'Your email or password was incorrect!'
      render :new
    end
  end

  def destroy
    session.delete(:cart)
    flash[:success] = "#{current_user.name} is now logged out!"
    session[:user_id] = nil
    redirect_to home_path
  end

  private

  def login_redirect(user)
    session[:user_id] = user.id
    if current_manager?
      redirect_to manager_dashboard_path
    elsif current_admin?
      redirect_to admin_dashboard_path
    else
      redirect_to user_dashboard_path
    end
  end

end
