class PayPeriod < ApplicationRecord
  belongs_to :employee
  has_many :work_days

  accepts_nested_attributes_for :work_days

def totals_per_day (daily_total)
employee.work_day.each do |daily_total|
            daily_totals = :regular + :vacation + :sick_leave + :non_paid_leave + :maternity_leave + :over_time

        end    

end
end