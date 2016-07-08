class AddWorkGroupToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_reference :employees, :work_group, foreign_key: true
  end
end
