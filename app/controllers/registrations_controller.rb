class RegistrationsController <Devise::RegistrationsController
  
  
  protected

  def after_sign_up_path_for(resource)
    if current_user
      plans_list_customers_path
    end
  end
  
  def after_update_path_for(resource)
    if current_user.role == 'admin'
      users_list_admins_path
    else
      if current_user
        plans_list_customers_path
      else
      end  
    end  
  end
  

end
