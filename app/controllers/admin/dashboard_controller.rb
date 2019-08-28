class Admin::DashboardController < Admin::BaseController

  def show
  end

  def index
    @survey = Survey.all
  end
  
end
