class AddDailyTotalToWorkDays < ActiveRecord::Migration[5.0]
  def change
    add_column :work_days, :daily_total, :float
  end
end
