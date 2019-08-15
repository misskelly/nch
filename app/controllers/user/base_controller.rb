class User::BaseController < ApplicationController
  before_action :require_sales_user
end
