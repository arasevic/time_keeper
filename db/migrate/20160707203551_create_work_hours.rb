class CreateWorkHours < ActiveRecord::Migration[5.0]
  def change
    create_table :work_hours do |t|
      t.string :type
      t.float :duration

      t.timestamps
    end
  end
end
