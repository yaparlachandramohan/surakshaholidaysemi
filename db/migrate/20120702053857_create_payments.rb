class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer  :plan_id
      t.integer  :amount
      t.integer  :emi_month
      t.timestamps
    end
  end
end
