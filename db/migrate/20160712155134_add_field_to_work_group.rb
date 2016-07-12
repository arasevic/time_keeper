class AddFieldToWorkGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :work_groups, :name, :string
  end
end
