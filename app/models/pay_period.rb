class PayPeriod < ApplicationRecord
  belongs_to :employee
  has_many :work_days

  accepts_nested_attributes_for :work_days

before_update :update_daily_total

private
	def update_daily_total 
		work_days = self.work_days
			ot_total = 0
			rt_total = 0
			vt_total = 0
			sl_total = 0
			npl_total = 0 
			ml_total = 0
		
		work_days.each do |work_day|
            dt = 0
           

            dt += work_day.over_time unless work_day.over_time.nil?
            ot_total += work_day.over_time unless work_day.over_time.nil?

            dt += work_day.vacation unless work_day.vacation.nil?
            vt_total  += work_day.vacation unless work_day.vacation.nil?

            dt += work_day.regular unless work_day.regular.nil?
            rt_total += work_day.regular unless work_day.regular.nil?

            dt += work_day.maternity_leave unless work_day.maternity_leave.nil?
            ml_total += work_day.maternity_leave unless work_day.maternity_leave.nil?

            dt += work_day.non_paid_leave unless work_day.non_paid_leave.nil?
            npl_total += work_day.non_paid_leave unless work_day.non_paid_leave.nil?

            dt += work_day.sick_leave unless work_day.sick_leave.nil?
            sl_total += work_day.sick_leave unless work_day.sick_leave.nil?

            work_day.daily_total = dt 


            work_day.save
            
        end
        self.regular_total = rt_total
            self.over_time_total = ot_total
            self.vacation_total = vt_total
            self.maternity_leave_total = ml_total
            self.sick_leave_total = sl_total
            self.non_paid_leave_total = npl_total
   
	end
end