class AddFieldToWorkGroup < ActiveRecord::Migration[5.0]
  def up

    create_table :work_groups do |t|
         

         t.timestamps
    end
    add_column :work_groups, :name, :string
  end
end
