class PaymentsController < ApplicationController
  
  before_filter :authenticate_user!
  
  require 'will_paginate/array'
  @@per_page = 12
  
  def index
    session[:per_page_payments] =  @@per_page
    @users_payments = Payment.where('plan_id =?',params[:plan_id]).paginate :page => params[:page], :per_page =>@@per_page
  end
  
  def new
    @payment = Payment.new
  end
  
  def create
    @payment = Payment.new(params[:payment])
    @payment.plan_id = params[:plan_id]
    if @payment.save
      flash[:notice] = "Payment Successfully Saved!."
      redirect_to payment_path(:id => @payment.id)
    else
      render action => :new
    end
  end
  
  def show
    @payment = Payment.find(params[:id])
  end
  
  def edit
    @payment = Payment.find(params[:id])
  end
  
  def update
    @payment = Payment.find(params[:id])
    if @payment.update_attributes(params[:payment])
      redirect_to payment_path(:id => @payment.id)
      flash[:notice] = "Paymen Successfully Update!."
    else
      render action => :edit
    end   
  end
end
