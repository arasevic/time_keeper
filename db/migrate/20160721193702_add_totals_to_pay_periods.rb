class AddTotalsToPayPeriods < ActiveRecord::Migration[5.0]
  def change
    add_column :pay_periods, :regular_total, :float
    add_column :pay_periods, :vacation_total, :float
    add_column :pay_periods, :maternity_leave_total, :float
    add_column :pay_periods, :over_time_total, :float
    add_column :pay_periods, :sick_leave_total, :float
    add_column :pay_periods, :non_paid_leave_total, :float
  end
end
