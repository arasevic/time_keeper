class AddAdminToWorkGroups < ActiveRecord::Migration[5.0]
  def change
  	add_reference :work_groups, :admin, foreign_key: true
  end
end
