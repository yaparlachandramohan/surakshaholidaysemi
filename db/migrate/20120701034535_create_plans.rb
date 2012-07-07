class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer  :user_id
      t.string   :name
      t.integer  :cost
      t.integer  :emi_months
      t.datetime :start_date
      t.timestamps
    end
  end
end
