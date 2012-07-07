# rake db:load_default_user_data

desc 'Load default data for the site into the db'
namespace :db do
  task :load_default_user_data => :environment do
    #Create admin user
    ['mohan@surakshaholidaysemi.com','narayana@surakshaholidaysemi.com'].each do |email|
      user = User.where(:email => email).first
      if user.blank?
        user = User.new(:email => email, :username => 'narayana',:password => '123456',:password_confirmation => '123456',:role => 'admin')  
      end
      user.save!    
    end
  end
end
