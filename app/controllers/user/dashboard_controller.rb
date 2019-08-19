class User::DashboardController < User::BaseController

  def show
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

end
