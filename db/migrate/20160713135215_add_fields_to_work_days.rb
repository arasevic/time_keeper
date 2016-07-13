class AddFieldsToWorkDays < ActiveRecord::Migration[5.0]
  def change
    add_column :work_days, :day, :string
    add_column :work_days, :over_time, :float
    add_column :work_days, :regular, :float
    add_column :work_days, :vacation, :float
    add_column :work_days, :sick_leave, :float
    add_column :work_days, :non_paid_leave, :float
    add_column :work_days, :maternity_leave, :float
  end
end
