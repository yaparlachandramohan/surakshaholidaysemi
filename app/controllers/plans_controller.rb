class PlansController < ApplicationController
  
  
  before_filter :authenticate_user!
  
  require 'will_paginate/array'
  @@per_page = 5
  
  def index
    session[:per_page_plans] =  @@per_page
    @users_plans = Plan.where('user_id =?',params[:user_id]).order('created_at DESC').paginate :page => params[:page], :per_page =>@@per_page
  end
  
  def new
    @plan = Plan.new
  end
  
  def create
    @plan = Plan.new(params[:plan])
    @plan.user_id = params[:user_id]
    if @plan.save
      redirect_to plan_path(:id => @plan.id)
      flash[:notice] = "Plan Successfully Saved!."
    else
      render action => :new
    end
  end
  
  def show
    @plan = Plan.find(params[:id])
  end
  
  def edit
    @plan = Plan.find(params[:id])
  end
  
  def update
    @plan = Plan.find(params[:id])
    if @plan.update_attributes(params[:plan])
      redirect_to plan_path(:id => @plan.id)
      flash[:notice] = "Plan Successfully Updated!."
    else
      render action => :edit
    end    
  end
end
