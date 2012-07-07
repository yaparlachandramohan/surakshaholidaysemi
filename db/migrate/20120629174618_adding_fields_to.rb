class AddingFieldsTo < ActiveRecord::Migration
  def up
    add_column :users,:username,:string
    add_column :users,:first_name,:string
    add_column :users,:last_name,:string
    add_column :users,:mobile_no,:string
    add_column :users,:address,:text
    add_column :users,:role,:string
  end

  def down
    remove_column :users,:username
    remove_column :users,:first_name
    remove_column :users,:last_name
    remove_column :users,:mobile_no
    remove_column :users,:address
    remove_column :users,:role
  end
end
