class ApplicationController < ActionController::Base
  
  protect_from_forgery
  
  before_filter :instantiate_controller_and_action_names
  
  
  def after_sign_in_path_for(resource)
    if current_user.role == 'admin'
      users_list_admins_path
    else
      if current_user
        plans_list_customers_path
      end    
    end    
  end
  
  def instantiate_controller_and_action_names
    @current_action=action_name
    @current_controller=controller_name
  end
  
  
  
end
