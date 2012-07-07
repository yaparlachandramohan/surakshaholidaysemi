# rake db:plans_status_update

desc 'Updateing Plans Status db'

namespace :db do
  task :plans_status_update => :environment do
    Rails.logger.info "\n\n Checking Plans status rake task start \n\n"
    Plan.plans_status
    Rails.logger.info "\n\n Checking Plans Status rake task end \n\n"
  end
end
