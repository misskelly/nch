class UsersController < ApplicationController

  def show
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

end
