class AdminsController < ApplicationController
  
  before_filter :authenticate_user!
  
  require 'will_paginate/array'
  @@per_page = 20
  
  def users_list
    session[:per_page_users_list] =  @@per_page
    @users = User.where('role IS NULL').paginate :page => params[:page], :per_page =>@@per_page
  end
  
  def agents_list
  end
   
end
