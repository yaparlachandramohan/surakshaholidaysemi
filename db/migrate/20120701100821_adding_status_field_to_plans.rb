class AddingStatusFieldToPlans < ActiveRecord::Migration
  def up
    add_column :plans,:status,:string
  end

  def down
    remove_column :plans,:status
  end
end
