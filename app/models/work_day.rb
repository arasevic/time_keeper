class WorkDay < ApplicationRecord

	belongs_to :pay_period



  DAY = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  
  validates :day, inclusion: { 
    in: DAY }

	def totals_per_day (w)
	WorkDay.each do 
            w = :regular + :vacation + :sick_leave + :non_paid_leave + :maternity_leave + :over_time
        end    
	end
end