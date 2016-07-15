class AddPayPeriodToWorkDays < ActiveRecord::Migration[5.0]
  def change
    add_reference :work_days, :pay_period, foreign_key: true
  end
end
