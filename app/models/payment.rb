require 'mechanize'
require 'watir-webdriver'
require 'json'

class Payment < ActiveRecord::Base
  
  
  attr_accessible :plan_id,:amount,:emi_month
  
  belongs_to :plan
  
  def self.send_payment_message(plan_id)
    @agent = Mechanize.new
    @page = @agent.get('http://www.160by2.com/login')
    @page.form_with(:action => 're-login') do |form|
      form.username = "9440420540"
      form.password = "mohanreddy579"
      form.click_button(form.buttons.second)
    end
    @next_page = @page.form.submit  
    open_page  = @next_page.search("nav[@class='main-nav']").search("ul[@class='nav']").search("li").search("a[@id='psend']")
    send_page = open_page.to_s.gsub("<a id=\"psend\" onclick=\"openPage('","").gsub("');\">Send SMS</a>","")
    @next_page = @agent.get("http://www.160by2.com/#{send_page}")
    @action_id = @next_page.form.fields[1].value
    @plan = Plan.where('id =?',plan_id).first
    @user = User.where('id =?',@plan.user_id).first
    result     = @agent.post('http://www.160by2.com/SendSMSAction',:mobile1=> @user.mobile_no,
    :msg1 => "Hai this Mohan",:action1=>"#{@action_id}")
    logger.debug "################"
     #logger.debug "SendSMSConfirm.action?#{send_page.gsub('SendSMS?',"")}".inspect
    logger.debug result.uri.to_s.inspect
  end
  
  PAYMENT_EMI_MONTH = 
  [
    ["Select EMI Month","Select EMI Month"],
    ["1","1"],
    ["2","2"],
    ["3","3"],
    ["4","4"],
    ["5","5"],
    ["6","6"],
    ["7","7"],
    ["8","8"],
    ["9","9"],
    ["10","10"],
    ["11","11"],
    ["12","12"],
    ["13","13"],
    ["14","14"],
    ["15","16"],
    ["16","16"],
    ["17","17"],
    ["18","18"],
    ["19","19"],
    ["20","20"],
    ["21","21"],
    ["22","22"],
    ["23","23"],
    ["24","24"],
    ["25","25"],
    ["26","26"],
    ["27","27"],
    ["28","28"],
    ["29","29"],
    ["30","30"],
    ["31","31"],
    ["32","32"],
    ["33","33"],
    ["34","34"],
    ["35","35"],
    ["36","36"]
  ]
  
end
