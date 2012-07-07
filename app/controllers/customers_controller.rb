class CustomersController < ApplicationController

  
  before_filter :authenticate_user!
  require 'will_paginate/array'
  @@per_page = 12
  
  def plans_list
    session[:per_page_user_plan_list] =  @@per_page
    @user_plans = current_user.plans.order('created_at DESC').paginate :page => params[:page], :per_page => 5
  end
  
  def payment_list
    session[:per_page_user_payment]
    @user_payments = Payment.where('plan_id =?',params[:plan_id]).paginate :page => params[:page], :per_page => @@per_page
  end

end
