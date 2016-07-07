class CreateWorkDays < ActiveRecord::Migration[5.0]
  def change
    create_table :work_days do |t|
      t.date :date

      t.timestamps
    end
  end
end
