class Plan < ActiveRecord::Base
  
  attr_accessible :user_id,:name,:cost,:emi_months,:start_date,:status
  
  belongs_to :user
  
  has_many :payments
  
  PLANS_NAMES  = 
   [
     ["Select Plans"," Select Plan"],
     ["Bangkok and Pattaya","Bangkok and Pattaya"],
     ["Swiss Paris","Swiss Paris"],
     ["Mauritius","Mauritius"],
     ["Malayasia","Malayasia"]
   ]
   
  def self.plans_status
    @plans = Plan.all
    unless @plans.blank?
      @plans.each do |plan|
        if plan.start_date == Date.today
          plan.update_attributes(:status => "active")
        end 
        if plan.start_date + plan.emi_months.month == "2013-01-03"
          plan.update_attributes(:status => "inactive")
        end 
      end
    end
  end
  
  PLAN_EMI_MONTHS = 
  [
    ["Select EMI Months","Select Emi Months"],
    ["6","6"],
    ["12","12"],
    ["24","24"],
    ["36","36"]  
  ]
  
  
end
