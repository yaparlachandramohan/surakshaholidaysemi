class DashboardsController < ApplicationController
  
  before_filter :authenticate_user!,:except => [:index,:plans_details]
  
  def index
  end
  
  def plans_details
  end
 
end
